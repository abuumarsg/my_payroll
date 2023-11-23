<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Pages extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
	}
	public function dashboard(){
		// $this->load->view('admin/temp/head');
		$this->load->view('admin/temp/header');
		$this->load->view('admin/temp/sidebar');
		$this->load->view('admin/home');
		$this->load->view('admin/temp/footer');
	}
	public function logout()
	{
		if ($this->session->has_userdata('adm')) {
			$data=['status'=>0];
			$this->db->where('id_admin',$this->session->userdata('adm')['id']);
			$this->db->update('admin',$data);
		}
		if ($this->session->has_userdata('emp')) {
			$data=['status'=>0];
			$this->db->where('id_karyawan',$this->session->userdata('emp')['id']);
			$this->db->update('karyawan',$data);
		}
		setcookie('nik', '', 0, '/');
		setcookie('pages', '', 0, '/');
		$this->session->sess_destroy();
		redirect('auth');
	}
}
