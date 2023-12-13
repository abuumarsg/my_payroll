<?php
/**
* 
*/
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_master extends CI_Model
{
	function __construct()
    {
        parent::__construct();
		// $this->filter_admin=[];
		// if ($this->session->has_userdata('adm')) {
		// 	$id_adm = $this->session->userdata('adm')['id'];
		// 	$data_admin=$this->getAdmin($id_adm);
		// 	if (isset($data_admin[0])) {
		// 		$this->filter_admin=[
		// 			'list_filter_bagian'=>$this->otherfunctions->getParseOneLevelVar($data_admin[0]->list_filter_bagian),
		// 			'filter_status'=>$this->model_master->checkAccessFilter($data_admin[0]->list_access),
		// 			'kode_bagian'=>$data_admin[0]->kode_bagian,
		// 		];
		// 	}
		// }
    }
	public function getDataKaryawan($where=null, $row=false)
	{
		$this->db->select('a.*');
		$this->db->from('karyawan as a');
		if(!empty($where)){
			$this->db->where($where);
		}
		$this->db->order_by('a.id_karyawan', 'DESC');
		if($row){
			$query = $this->db->get()->row_array();
		}else{
			$query = $this->db->get()->result();
		}
		return $query;
	}
	public function getListMasterKomponen($where=null, $row=false)
	{
		$this->db->select('a.*, IF((a.type_first = "data"), b.nama, a.first) as nama1,  IF((a.type_second = "data"), c.nama, a.second) as nama2');
		$this->db->from('master_komponen as a');
		$this->db->join('master_komponen AS b', 'b.kode = a.first', 'left');
		$this->db->join('master_komponen AS c', 'c.kode = a.second', 'left');
		if(!empty($where)){
			$this->db->where($where);
		}
		$this->db->order_by('a.kode', 'DESC');
		if($row){
			$query = $this->db->get()->row_array();
		}else{
			$query = $this->db->get()->result();
		}
		return $query;
	}
	public function getListMasterRumusPayroll($where=null, $row=false)
	{
		$this->db->select('a.*');
		$this->db->from('master_rumus_payroll as a');
		if(!empty($where)){
			$this->db->where($where);
		}
		$this->db->order_by('a.kode', 'DESC');
		if($row){
			$query = $this->db->get()->row_array();
		}else{
			$query = $this->db->get()->result();
		}
		return $query;
	}
	public function getUserGroup($id){
		return $this->db->get_where('master_user_group',array('id_group'=>$id))->row_array();
	}
	public function getAccess($id){
		$this->db->select('a.*,b.nama as nama_buat, c.nama as nama_update');
		$this->db->from('master_access AS a');
		$this->db->join('admin AS b', 'b.id_admin = a.create_by', 'left'); 
		$this->db->join('admin AS c', 'c.id_admin = a.update_by', 'left'); 
		$this->db->where('a.id_access',$id); 
		$query=$this->db->get()->result();
		return $query;
	}
	public function getListAccess($active=false)
	{
		if($active){
			$this->db->where('status',1); 
		}		
		$this->db->order_by('create_date','DESC');
		$query=$this->db->get('master_access')->result();
		return $query;
	}
	public function getMenu($id){
		return $this->db->get_where('master_menu',array('id_menu'=>$id,'status'=>1,'id_menu !='=>0))->row_array();
	}
	public function getListMenuActive()
	{
		$this->db->order_by('sequence','ASC');
		$query=$this->db->get_where('master_menu',['status'=>1,'id_menu !='=>0])->result();
		return $query;
	}
//=========================================== MASTER BAGIAN ====================================================================
	public function getListBagian($active=false)
	{
		$where=['id_bagian !='=>1, 'id_bagian != '=>2];
		$this->db->select('a.*');
		$this->db->from('master_bagian AS a');
		$this->db->where($where); 
		if ($active) {
			$this->db->where('a.status',1); 
			$this->db->order_by('nama','ASC');
		}else{
			$this->db->order_by('a.create_date','DESC');
		}
		$query=$this->db->get()->result();
		return $query;
	}
	public function getBagian($id, $where = null)
	{
		$this->db->select('a.*,b.nama as nama_buat, c.nama as nama_update');
		$this->db->from('master_bagian AS a');
		$this->db->join('admin AS b', 'b.id_admin = a.create_by', 'left'); 
		$this->db->join('admin AS c', 'c.id_admin = a.update_by', 'left'); 
		if(!empty($id)){ $this->db->where('a.id_bagian',$id); } 
		if(!empty($where)){
			$this->db->where($where);
			$this->db->group_by('a.kode_bagian');
		}
		$query=$this->db->get()->result();
		return $query;
	}
}