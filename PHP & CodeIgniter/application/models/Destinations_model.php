<?php

class Destinations_Model extends CI_Model {

   //vai buscar à database - todas as destinations excepto as highlights, em ordem asc por titulo
    public function get_all(){
        return $this->db->query("SELECT * FROM destinations WHERE highlight = 0 ORDER BY title ASC")->result_array();
    }

    //vai buscar à database - todas as higlights, em ordem desc por data
    public function get_highlights(){
        return $this->db->query("SELECT * FROM destinations WHERE highlight = 1 ORDER BY date DESC LIMIT 2")->result_array();
    }

    // vai buscar à database - toda a info de uma só destination e interliga a info através do id
    public function get_one($id){
        return $this->db->query('SELECT destinations.id, destinations.title, destinations.image, destinations.summary, 
        destinations.text, destinations.date, destinations.price, categories.title AS category FROM destinations JOIN categories ON categories.id = destinations.category_id WHERE destinations.id='.$id)->row_array();
    }

    // vai buscar à database - todos os comentarios inseridos na database e interliga com o id da destination
    public function get_comments($id){
        return $this->db->query('SELECT * FROM comments WHERE destination_id='.$id)->result_array();
    }

    // cria o inicio da query do search, interligando com as conditions que estao no controller
    public function search($conditions){
        return $this->db->query("SELECT * FROM destinations WHERE publish = 1 $conditions")->result_array();

    }

}
