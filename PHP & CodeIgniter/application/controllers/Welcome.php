<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends MY_Controller {

	public function __construct(){
		parent::__construct();
		

	}
	
	//pagina prinicipal do website
	public function index(){
		$this->load->model('destinations_model');

		//vai buscar as queries necessarias para o index e guardar em variaveis
		$this->data['highlights'] = $this->destinations_model->get_highlights();
        $this->data['destinations'] = $this->destinations_model->get_all();

		//permite utilizar as variveis na página
		$this->render('index');
	}
}
