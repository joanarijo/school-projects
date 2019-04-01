<?php

class Destinations extends MY_Controller {

	public function __construct(){
        
        parent::__construct();
        
        //load do model destinations_model
        $this->load->model('destinations_model');

	}
    
    //pagina destinations / igual à principal neste caso
	public function index(){
        
        //vai buscar a query dos hightlights que está no model e guarda a numa variavel
        $this->data['highlights'] = $this->destinations_model->get_highlights();
        
        //vai buscar a query das destinations que está no model e guarda a numa variavel
        $this->data['destinations'] = $this->destinations_model->get_all();

        //permite utilizar as variveis na página
        $this->render('index');
        
    }

    //pagina show - uma só destination
    public function show($id){
        
        //vai buscar a query de uma só destination e os seus comentaarios que estao no model e guarda em variaveis
        //faz a interlicacao dos respectivos ids de cada destination
        $this->data['destination']= $this->destinations_model->get_one($id);
        $this->data['comments']= $this->destinations_model->get_comments($id);

        //permite utilizar as variveis na página destionaion_show
        $this->render('destination_show');

    }

   // funcao para inserir os comentarios na database
    public function post_comment($article_id){

        //guarda a data colocada nos inputs em variaveis
        $author = $this->input->post('author');
        $comment = $this->input->post('comment');
        
        //traduz a data para o formato da database
        $today = date('Y-m-d H:i');
        
        //array para interligar a informacao dos inputs e id com a database
        $comment_data = array(
        'author' => $author,
        'comment' => $comment,
        'date' => $today,
        'approved' => 1,
        'destination_id' => $article_id
        );

        //insere os comentarios na database e faz o redirect para a mesma pagina, interligado com o id
        $this->db->insert('comments', $comment_data);
        redirect("destinations/show/$article_id", "refresh");

    }

    //funcao search com titlo ou sumario
    public function search(){
        
        $conditions = '';
        $info = $this->input->get('search');

    //completa a query do model, acrescentando a info inserida no input à query
    if($info){
        $conditions .= " AND title LIKE '%$info%' OR summary LIKE '%$info%'";
    }
      
        //guarda numa variavel a query e condicoes mencionadas em cima
        $this->data['destinations'] = $this->destinations_model->search($conditions);
        $this->render('search');
    }

}
