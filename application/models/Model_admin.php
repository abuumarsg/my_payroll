<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_admin extends CI_Model
{
	function __construct()
    {
        parent::__construct();
		// $this->load->model('model_master');
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
	public function getAdminSuper($id)
	{
		$this->db->select('a.*,b.nama as nama_buat, c.nama as nama_update');
		$this->db->from('admin_super AS a');
		$this->db->join('admin_super AS b', 'b.id_admin = a.create_by', 'inner'); 
		$this->db->join('admin_super AS c', 'c.id_admin = a.update_by', 'inner');
		$this->db->where('a.id_admin',$id); 
		$query=$this->db->get()->result();
		return $query;
	}
}