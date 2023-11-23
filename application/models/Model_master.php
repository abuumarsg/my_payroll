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
	public function getListMasterKomponen($where=null, $row=false)
	{
		$this->db->select('a.*, IF((a.type_first = "data"), b.nama, a.first) as nama1,  IF((a.type_second = "data"), c.nama, a.first) as nama2');
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
}