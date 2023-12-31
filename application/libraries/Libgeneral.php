<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Libgeneral {

    protected $CI;
    public function __construct()
    {
        $this->CI =& get_instance();
    }
    public function index()
    {
        $this->redirect('not_found');
    }
    public function getDateNow($format = 'Y-m-d H:i:s') 
    {
        $date=gmdate($format, time() + 3600*(7));
        return $date;
    }
    
    function drawMenuAdmin($your_menu,$menu,$id_parent,$url)
    {
        if (empty($menu)) 
        return null;
        $new_val = null;
        foreach ($menu as $d) {
            if($d->parent == $id_parent){
                if (in_array($d->id_menu,$your_menu)) {
                    if ($this->getMenuAdminChildren($menu,$d->id_menu)) {
                        $url_act=$this->getParseOneLevelVar($d->sub_url);
                        if (in_array($url,$url_act)) {
                            $class='active';
                            $mo=' menu-open';
                        }else{
                            $class='';
                            $mo='';
                        }
                        $name='<i class="fa '.$d->icon.'"></i> <p>'.$d->nama.' <i class="right fas fa-angle-left"></i></p></a>';
                        $urlx='#';
                    }else{
                        $url_act=$this->getParseOneLevelVar($d->sub_url);
                        if (in_array($url,$url_act)) {
                            $class='active';
                            $mo=' menu-open';
                        }else{
                            if ($url == $d->url) {
                                $class='active';
                                $mo=' menu-open';
                            }else{
                                $class=null;
                                $mo=null;
                            }
                        }
                        $name='<i class="'.$d->icon.'"></i> <p>'.$d->nama.'</p>';
                        $urlx=$d->url;

                    }
                    $new_val .= '<li class="nav-item '.$mo.'"> <a href="'.$urlx.'" class="nav-link '.$class.'">'.$name.'</a>';
                    if ($this->getMenuAdminChildren($menu, $d->id_menu))                                   
                    $new_val.= '<ul class="nav nav-treeview">'.$this->drawMenuAdmin($your_menu,$menu,$d->id_menu,$url).'</ul>'; 
                    $new_val.= "</li>";  
                }
            }
        }
        return $new_val;
    }
    function getMenuAdminChildren($data,$id)
    {
        foreach ($data as $d) {
            if ($d->parent == $id)
            return true;            
        }
        return false;
    }
    function getParseOneLevelVar($val)
    {
        $bag=[];
        if(empty($val)) 
            return $bag;
        $bag=explode(';',$val);
        return $bag;
    }
    public function convertResultToRowArray($valObj) {
        if (empty($valObj) || !isset($valObj))
          return null;
        $valObj=json_decode(json_encode($valObj), true);
        return $valObj[0];
    }
    public function getPropertiesTable($val)
    {
        $data=[
            'tanggal'=>null,
            'status'=>null,
            'aksi'=>null
        ];
        if (empty($val))
            return $data;
        $create=null;
        $update=null;
        $status=null;
        $delete=null;
        if (isset($val['create'])) {
            $create=$val['create'];//$this->CI->formatter->getDateTimeMonthFormatUser($val['create']);
        }
        if (isset($val['update'])) {
            $update=$val['update'];//$this->CI->formatter->getDateTimeMonthFormatUser($val['update']);
        }
        // '<span class="badge badge-success">Success</span>'
        $tanggal='<span class="badge badge-warning" data-toggle="tooltip" title="Dibuat Tanggal""><i class="fas fa-pen fa-fw"></i>'.$create.' WIB</span><br><span class="badge badge-primary" data-toggle="tooltip" title="Diupdate Tanggal"><i class="fa fa-edit fa-fw"></i> '.$update.' WIB </span>';
        if (isset($val['status'])) {
            if ($val['status'] == 1) {
              $status='<button type="button" class="stat scc" href="javascript:void(0)" onclick=do_status('.$val['id'].',0)><i class="fa fa-toggle-on"></i></button>';
            }else{
                $status='<button type="button" class="stat err" href="javascript:void(0)" onclick=do_status('.$val['id'].',1)><i class="fa fa-toggle-off"></i></button>';
            }
            if (isset($val['access']['l_ac']['stt'])) {
                $var_st=($val['status'] == 1) ? '<i class="fa fa-toggle-on stat scc" title="Tidak Diijinkan"></i>':'<i class="fa fa-toggle-off stat err" title="Tidak Diijinkan"></i>';
                $status=(in_array($val['access']['l_ac']['stt'], $val['access']['access']) && isset($val['access']['l_ac']['stt']))  ? $status : $var_st;
            }else{
                $status=$this->CI->messages->not_allow();
            }
        }
        if (isset($val['access']['l_ac']['del'])) {
            $delete = (in_array($val['access']['l_ac']['del'], $val['access']['access'])) ? '<button type="button" class="btn btn-danger btn-sm"  href="javascript:void(0)" onclick=delete_modal('.$val['id'].')><i class="fa fa-trash" data-toggle="tooltip" title="Hapus Data"></i></button> ' : null;
        }else{
            $delete = null;
        }
        $info = '<button type="button" class="btn btn-info btn-sm" href="javascript:void(0)" onclick=view_modal('.$val['id'].')><i class="fa fa-info-circle" data-toggle="tooltip" title="Detail Data"></i></button> ';
        if (isset($val['access']['l_ac']['prn'])) {
            $print = (in_array($val['access']['l_ac']['prn'], $val['access']['access'])) ? '<button type="button" class="btn btn-warning btn-sm" href="javascript:void(0)" onclick="do_print('.$val['id'].')"><i class="fa fa-print" data-toggle="tooltip" title="Cetak Data"></i></button> ' : null;
        }else{
            $print = null;
        }
        $aksi=$info.$delete;
        //================== kedua ====================
        $status2=null;
        $delete2=null;
        if (isset($val['status'])) {
            if ($val['status'] == 1) {
              $status2='<button type="button" class="stat scc" href="javascript:void(0)" onclick=do_status2('.$val['id'].',0)><i class="fa fa-toggle-on"></i></button>';
            }else{
                $status2='<button type="button" class="stat err" href="javascript:void(0)" onclick=do_status2('.$val['id'].',1)><i class="fa fa-toggle-off"></i></button>';
            }
            if (isset($val['access']['l_ac']['stt'])) {
                $var_st=($val['status'] == 1) ? '<i class="fa fa-toggle-on stat scc" title="Tidak Diijinkan"></i>':'<i class="fa fa-toggle-off stat err" title="Tidak Diijinkan"></i>';
                $status2=(in_array($val['access']['l_ac']['stt'], $val['access']['access']) && isset($val['access']['l_ac']['stt']))  ? $status2 : $var_st;
            }else{
                $status2=$this->CI->messages->not_allow();
            }
        }
        if (isset($val['access']['l_ac']['del'])) {
            $delete2 = (in_array($val['access']['l_ac']['del'], $val['access']['access'])) ? '<button type="button" class="btn btn-danger btn-sm"  href="javascript:void(0)" onclick=delete_modal2('.$val['id'].')><i class="fa fa-trash" data-toggle="tooltip" title="Hapus Data"></i></button> ' : null;
        }else{
            $delete2 = null;
        }
        $info2 = '<button type="button" class="btn btn-info btn-sm" href="javascript:void(0)" onclick=view_modal2('.$val['id'].')><i class="fa fa-info-circle" data-toggle="tooltip" title="Detail Data"></i></button> ';
        $data=[
            'tanggal'=>$tanggal,
            'status'=>$status,
            'aksi'=>$aksi,
            'cetak'=>$print,
            'info'=>$info,
            'delete'=>$delete,
            'status2'=>$status2,
            'info2'=>$info2,
            'delete2'=>$delete2,
        ];
        return $data;
    }
    public function getMark($usage = null)
    {
        $return='<i class="fa fa-times-circle" style="color:red" data-toggle="tooltip" title="Unknown"></i> ';
        switch($usage){
            case 'danger' : $return = '<i class="fa fa-times-circle" style="color:red"></i> '; break;
            case 'warning' : $return = '<i class="fa fa-warning" style="color:orange"></i> '; break;
            case 'success' : $return = '<i class="fa fa-check-circle scc" class=""></i> '; break;
            case 'info' : $return = '<i class="fa fa-info-circle" style="color:blue"></i> '; break;
        }
        return $return;
    }
    public function getVarFromArrayKey($key,$pack)
    {
        if (!isset($pack[$key])) 
            return $this->getMark('danger');
        return $pack[$key];
    }
    public function getOperationAritmaticList()
    {
        $pack=[
            '+'=>'+',
            '-'=>'-',
            '/'=>'/',
            '*'=>'*'
        ];
        return $pack;
    }
    public function getOperationAritmatic($key)
    {
        return $this->getVarFromArrayKey($key,$this->getOperationAritmaticList());
    }
    public function getJenisKomponenList()
    {
        $pack=[
            'nominal'=>'NOMINAL',
            'rumus'=>'RUMUS',
        ];
        return $pack;
    }
    public function getJenisKomponen($key)
    {
        return $this->getVarFromArrayKey($key,$this->getJenisKomponenList());
    }
	public function getDateTimeMonthFormatUser($datetime,$second=null)
	{
        if(empty($datetime)) 
            return null;
        if(empty($second)){
            $datetime=explode(' ', date('Y-m-d H:i:s',strtotime($datetime)));
        }else{
            $datetime=explode(' ', date('Y-m-d H:i',strtotime($datetime)));
        }
		$date=explode('-', $datetime[0]);
		if (isset($datetime[1])) {
			$time=$datetime[1];
		}else{
            if(empty($second)){
                $time='00:00:00';                
            }else{
                $time='00:00';
            }
		}
		$new_datetime=$date[2].' '.$this->getNameOfMonth($date[1]).' '.$date[0].' '.$time;
		return $new_datetime;
	}
    public function getNameOfMonth($inputmonth)
    {
        if(empty($inputmonth)) 
            return null;
        $return = null;
        $month = strtolower(trim($inputmonth));
        switch($month){
            case '1' : $return = 'Januari'; break;
            case '01' : $return = 'Januari'; break;
            case 'januari' : $return = 'Januari'; break;
            case 'january' : $return = 'Januari'; break;
            case '2' : $return = 'Februari'; break;
            case '02' : $return = 'Februari'; break;
            case 'februari' : $return = 'Februari'; break;
            case 'february' : $return = 'Februari'; break;
            case '3' : $return = 'Maret'; break;
            case '03' : $return = 'Maret'; break;
            case 'maret' : $return = 'Maret'; break;
            case 'march' : $return = 'Maret'; break;
            case '4' : $return = 'April'; break;
            case '04' : $return = 'April'; break;
            case 'april' : $return = 'April'; break;
            case '5' : $return = 'Mei'; break;
            case '05' : $return = 'Mei'; break;
            case 'may' : $return = 'Mei'; break;
            case '6' : $return = 'Juni'; break;
            case '06' : $return = 'Juni'; break;
            case 'juni' : $return = 'Juni'; break;
            case 'june' : $return = 'Juni'; break;
            case '7' : $return = 'Juli'; break;
            case '07' : $return = 'Juli'; break;
            case 'juli' : $return = 'Juli'; break;
            case 'july' : $return = 'Juli'; break;
            case '8' : $return = 'Agustus'; break;
            case '08' : $return = 'Agustus'; break;
            case 'agt' : $return = 'Agustus'; break;
            case 'agu' : $return = 'Agustus'; break;
            case 'aug' : $return = 'Agustus'; break;
            case 'agustus' : $return = 'Agustus'; break;
            case 'august' : $return = 'Agustus'; break;
            case '9' : $return = 'September'; break;
            case '09' : $return = 'September'; break;
            case 'sep' : $return = 'September'; break;
            case 'sept' : $return = 'September'; break;
            case 'september' : $return = 'September'; break;
            case '10' : $return = 'Oktober'; break;
            case 'oct' : $return = 'Oktober'; break;
            case 'oktober' : $return = 'Oktober'; break;
            case 'october' : $return = 'Oktober'; break;
            case '11' : $return = 'November'; break;
            case 'nov' : $return = 'November'; break;
            case 'nopember' : $return = 'November'; break;
            case 'november' : $return = 'November'; break;
            case '12' : $return = 'Desember'; break;
            case 'dec' : $return = 'Desember'; break;
            case 'desember' : $return = 'Desember'; break;
            case 'december' : $return = 'Desember'; break;
            default : $return = $inputmonth; break;
        }
        return $return;
    }
    public function getNamaKomponenPayroll($data)
    {
        $datax = '';
        if(empty($data))
            return false;
		$komponen = explode(';', $data);
        if(!empty($komponen)){
            foreach ($komponen as $k => $val) {
				$name = $this->CI->model_master->getListMasterKomponen(['a.kode'=>$val], true);
                $datax .= ($k+1).'. '.$name['nama'].' ('.$name['nama1'].' '.$name['operation'].' '.$name['nama2'].')<br>';
            }
        }
        return $datax;
    }
    public function getGenerateKomponenPayroll($komponen, $gapok = 0)
    {
        $datax = '';
        if(empty($komponen))
            return false;
        $first = 0;
        $oprt = '';
        $second = '';
        $nama_kom = '';
        if(!empty($komponen)){
            $name = $this->CI->model_master->getListMasterKomponen(['a.kode'=>$komponen], true);
            if($name['nama'] == 'Gaji Pokok'){
                $first = $gapok;
            }
            $nama_kom = $name['nama'];
            if($name['sifat'] == 'rumus'){
                if($name['type_first'] == 'variable'){
                    if(strpos($name['first'], "%") == true){
                        $angka = str_replace("%", "", $name['first']);
                        $first = $angka/100;
                    }else{
                        $first = $name['first'];
                    }
                }else{
                    $first = $this->getGenerateKomponenPayroll($name['first'], $gapok);
                    // if(is_array($first)){
                        // $first = $first['first'];
                    // }
                }
                $oprt = $name['operation'];
                if($name['type_second'] == 'variable'){
                    if(strpos($name['second'], "%") == true){
                        $angka = str_replace("%", "", $name['second']);
                        $second = $angka/100;
                    }else{
                        $second = $name['second'];
                    }
                }else{
                    $second = $this->getGenerateKomponenPayroll($name['second'], $gapok);
                    // if(is_array($second)){
                    //     $second = $second['first'];
                    //     if(is_array($second)){
                    //         $second = $second['first'];
                    //     }
                    // }
                }
            }
        }
        $datax = [
            'nama_kom'=>$nama_kom,
            'kode'=>$komponen,
            'first'=>$first,
            'oprt'=>$oprt,
            'second'=>$second,
        ];
        return $datax;
    }
    public function getforLanjutan($data)
    {
        $datax = '';
        if(empty($data))
            return false;
		echo '<pre>';
		print_r($data);
        if(is_array($data['first'])){
            // $first = $first['first'];
        }else{
            $nominalFirst = $data['first'];
        }
        if(is_array($data['second'])){
            if(is_array($data['second']['first'])){
                $this->
            }else{
                $nominalSecond = $data['second']['first'];
            }
    
        }else{
            $nominalSecond = $data['second'];
        }

    }
}