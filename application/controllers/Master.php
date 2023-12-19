<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Master extends CI_Controller 
{
	public function __construct() 
	{  
		parent::__construct(); 
		if(!empty($_COOKIE['nik'])){
			setcookie('main', 'adm', strtotime('+1 year'), '/');
		}else{
			setcookie('main', '', 0, '/');
		}
		if ($this->session->has_userdata('emp')) {
			$this->session->unset_userdata('emp');
		}
		$this->date = $this->libgeneral->getDateNow();
		if ($this->session->has_userdata('adm')) {
			$this->admin = $this->session->userdata('adm')['id'];
		}else{
			if(!empty($_COOKIE['main']) == 'adm'){
				$dataAdm=$this->db->get_where('admin_user',['username'=>$_COOKIE['nik']])->row_array();
				$this->session->set_userdata('adm', ['id'=>$dataAdm['id_admin']]);
				$this->admin = $this->session->userdata('adm')['id'];
			}else{
				redirect('auth');
			}

		}
        $this->load->model('model_admin');
	    $this->rando = $this->codegenerator->getPin(6,'number');
		// $dtroot['admin']=$this->model_admin->adm($this->admin);
		$dtroot['admin']=$this->libgeneral->convertResultToRowArray($this->model_admin->getAdmin($this->admin));
		$l_acc=$this->libgeneral->getYourAccess($this->admin);
		$l_ac=$this->libgeneral->getAllAccess();
		if (isset($l_ac['stt'])) {
			if (in_array($l_ac['stt'], $l_acc)) {
		      $attr='type="submit"';
		    }else{
		      $attr='type="button" data-toggle="tooltip" title="Tidak Diizinkan"';
		    }
		    if (!in_array($l_ac['edt'], $l_acc) && !in_array($l_ac['del'], $l_acc)) {
		      $not_allow='<label class="label label-danger">Tidak Diizinkan</label>';
		    }else{
		      $not_allow=NULL;
		    }
		}else{
			$not_allow=null;
			$attr=null;
		}		
		$this->link=$this->libgeneral->getYourMenu($this->admin);
		$this->access=['access'=>$l_acc,'l_ac'=>$l_ac,'b_stt'=>$attr,'n_all'=>$not_allow];
		$nm=explode(" ", $dtroot['admin']['nama']);
		$datax['adm'] = array( 
				'nama'=>$nm[0],
				'email'=>$dtroot['admin']['email'],
				'username'=>$dtroot['admin']['username'],
				'kelamin'=>$dtroot['admin']['kelamin'],
				'foto'=>$dtroot['admin']['foto'],
				'create'=>$dtroot['admin']['create_date'],
				'update'=>$dtroot['admin']['update_date'],
				'login'=>$dtroot['admin']['last_login'],
				'level'=>$dtroot['admin']['level'],
				// 'id_karyawan'=>$dtroot['admin']['id_karyawan'],
				// 'skin'=>$dtroot['admin']['skin'],
				// 'list_bagian'=>$dtroot['admin']['list_filter_bagian'],
				'menu'=>$this->model_master->getListMenuActive(),
				'your_menu'=>$this->libgeneral->getYourMenuId($this->admin),
				'your_url'=>$this->libgeneral->getYourMenu($this->admin),
				// 'notif'=>$this->libgeneral->getYourNotification($this->admin,'admin'),
				// 'kode_bagian'=>$dtroot['admin']['kode_bagian'],
				'id_admin'=>$this->admin,
				'access'=>$this->access,
			);
		$this->dtroot=$datax;
	}
	public function index(){
		redirect('main/dashboard');
	}
	public function master_bagian()
	{
		if (!$this->input->is_ajax_request()) 
		   redirect('not_found');
		$usage=$this->uri->segment(3);
		if ($usage == null) {
		   echo json_encode($this->messages->notValidParam());
		}else{
			if ($usage == 'view_all') {
				$data=$this->model_master->getListBagian();
				$access=$this->codegenerator->decryptChar($this->input->post('access'));
				$no=1;
				$datax['data']=[];
				foreach ($data as $d) {
					$var=[
						'id'=>$d->id_bagian,
						'create'=>$d->create_date,
						'update'=>$d->update_date,
						'access'=>$access,
						'status'=>$d->status,
					];

					$properties=$this->libgeneral->getPropertiesTable($var);
					$datax['data'][]=[
						$d->id_bagian,
						$d->kode_bagian,
						$d->nama,
						$d->keterangan,
						$properties['tanggal'],
						$properties['status'],
						$properties['aksi']
					];
					$no++;
				}
				echo json_encode($datax);
			}elseif ($usage == 'view_one') {
				$id = $this->input->post('id_bagian');
				$data=$this->model_master->getBagian($id);
				foreach ($data as $d) {
					$datax=[
						'id'=>$d->id_bagian,
						'kode_bagian'=>$d->kode_bagian,
						// 'kode_level_struktur'=>$d->kode_level_struktur,
						// 'kode_loker'=>$d->kode_loker,
						'nama'=>$d->nama,
						'keterangan'=>(!empty($d->keterangan)) ? $d->keterangan:$this->libgeneral->getMark(null),
						// 'atasan'=>$d->atasan,
						'status'=>$d->status,
						// 'nama_level_struktur'=>(!empty($d->nama_level_struktur)) ? $d->nama_level_struktur:$this->libgeneral->getMark(null),
						// 'nama_atasan'=>(!empty($d->nama_atasan)) ? $d->nama_atasan.((!empty($d->nama_loker_atasan)) ? ' ('.$d->nama_loker_atasan.')':''):$this->libgeneral->getMark(null),
						// 'nama_loker'=>(!empty($d->nama_loker)) ? $d->nama_loker:$this->libgeneral->getMark(null),
						'create_date'=>$this->libgeneral->getDateTimeMonthFormatUser($d->create_date),
						'update_date'=>$this->libgeneral->getDateTimeMonthFormatUser($d->update_date),
						'create_by'=>$d->create_by,
						'update_by'=>$d->update_by,
						'nama_buat'=>(!empty($d->nama_buat)) ? $d->nama_buat:$this->libgeneral->getMark($d->nama_buat),
						'nama_update'=>(!empty($d->nama_update))?$d->nama_update:$this->libgeneral->getMark($d->nama_update)
					];
				}
				echo json_encode($datax);
			}elseif ($usage == 'kode') {
				$data = $this->codegenerator->kodeBagian();
        		echo json_encode($data);
			}elseif ($usage == 'get_select2') {
				$datax = $this->model_master->getFilterBagianSelect2($this->filter,'all');
        		echo json_encode($datax);
			}elseif ($usage == 'get_select2_all') {
				$data = $this->model_master->getListBagian(true);
				$datax=[];
				if (isset($data)){
					foreach ($data as $d){
						$datax[$d->kode_bagian]=$d->nama.(($d->nama_loker)?' ('.$d->nama_loker.')':'');
					}
				}
        		echo json_encode($datax);
			}else{
				echo json_encode($this->messages->notValidParam());
			}
		}
	}
	function add_bagian(){
		if (!$this->input->is_ajax_request()) 
		   redirect('not_found');
		$kode=$this->input->post('kode');
		if ($kode != "") {
			$data=array(
				'kode_bagian'=>strtoupper($kode),
				'nama'=>ucwords($this->input->post('nama')),
				'keterangan'=>strtoupper($this->input->post('keterangan')),
			);
			$data=array_merge($data,$this->model_global->getCreateProperties($this->admin));
			$datax = $this->model_global->insertQuery($data,'master_bagian');
		}else{
			$datax = $this->messages->notValidParam();
		}
		echo json_encode($datax);
	}
	function edt_bagian(){
		if (!$this->input->is_ajax_request()) 
		   redirect('not_found');
		$id=$this->input->post('id');
		if ($id != "") {
			$data=array(
				'kode_bagian'=>strtoupper($this->input->post('kode')),
				'nama'=>ucwords($this->input->post('nama')),
				'keterangan'=>ucwords($this->input->post('keterangan')),
				// 'kode_level_struktur'=>strtoupper($this->input->post('level_struktur')),
				// 'kode_loker'=>strtoupper($this->input->post('loker')),
				// 'atasan'=>strtoupper($this->input->post('atasan_bagian')),
			);
			$data=array_merge($data,$this->model_global->getUpdateProperties($this->admin));
			//cek data
			// $old=$this->input->post('kode_old');
			// if ($old != $data['kode_bagian']) {
			// 	$cek=$this->model_master->checkBagianCode($data['kode_bagian']);
			// }else{
			// 	$cek=false;
			// }
			// $datax = $this->model_global->updateQueryCC($data,'master_bagian',['id_bagian'=>$id],$cek);
			$datax = $this->model_global->updateQuery($data,'master_bagian',['id_bagian'=>$id]);
		}else{
			$datax = $this->messages->notValidParam(); 
		}
	   	echo json_encode($datax);
	}
}