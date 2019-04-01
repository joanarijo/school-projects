<?php

class MY_Controller extends CI_Controller {

    protected $data = array();

    public function __construct(){
        parent::__construct();
    }

    //interliga o header e footer em todas as paginas do website
	public function render($page){
        $this->load->view('header', $this->data);
        $this->load->view($page, $this->data);
        $this->load->view('footer', $this->data);
	}
}
