<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Disciplina_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function getDisciplina()
	{
		$query = $this->db->select('nome, cart_amrl, cart_verm, castigos, pts_fairplay')
		->from('equipas')
		->order_by('pts_fairplay', 'DESC')
		->get();

		return $query->result_array();
	}
}
