<?php
class User_model extends CI_model{

	public function __construct()
    {
            parent::__construct();
            $this->load->database();
    }
 
	public function login_user($email,$pass){
	 
		$this->db->select('*');
		$this->db->from('user');
		$this->db->where('user_email',$email);
		$this->db->where('user_password',$pass);
	 
		if($query=$this->db->get()){
			return $query->row_array();
		}
		else{
			return false;
		}
	 
	 
	}
}
?>
