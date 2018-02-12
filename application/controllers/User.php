<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
 
	public function __construct(){
		parent::__construct();
		$this->load->model('user_model');
		$this->load->helper('url');
		$this->load->library('session');
		$this->load->database();
	 
	}
	 
	function login_user(){
		$user_login=array(
		'user_email'=>$this->input->post('user_email'),
		'user_password'=>md5($this->input->post('user_password'))
		);
	 
		$data=$this->user_model->login_user($user_login['user_email'],$user_login['user_password']);

		if($data){
			$this->session->set_userdata('user_id',$data['user_id']);
			$this->session->set_userdata('user_email',$data['user_email']);
			$this->session->set_userdata('user_name',$data['user_name']);
			$this->load->view('template/header');
			$this->load->view('user_profile.php');
			$this->load->view('template/footer');
	 
		} else{
			$this->session->set_flashdata('error_msg', 'Dados Incorrectos');
			$this->load->view('template/header');
			$this->load->view('user_profile.php');
			$this->load->view('template/footer');
	 
		}
	 
	}
 
	function user_profile(){
	 
		$this->load->view('user_profile.php');
	 
	}
	public function user_logout(){
	 
		$this->session->sess_destroy();
		redirect('index.php/user/', 'refresh');
	}

	public function index()
	{

		$this->load->view('template/header');
		$this->load->view('login');
		$this->load->view('template/footer');
	}
 
}
 
?>
