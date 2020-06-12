<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//defined('BASEPATH') OR exit('No direct script access allowed');
class Game extends CI_Controller{
    public function __construct()
    {
        parent::__construct();
        // Consider if it would be best to autoload some of the helpers from here.
        $this->load->helper('url');
        $this->load->helper('url_helper');
        $this->load->helper('html');
        $this->load->helper('cookie');

        // Load in your Models below.
        $this->load->model('GameModel');
        
        // Consider creating new Models for different functionality.
    }

    public function index($slug = "")
    {
        //TEMP TO TEST

        if($slug != NULL)
        {
            $data['result'] = $this->GameModel->getGame($slug);
            //echo $data['result'];
            //$data[]
            $data['title'] = $data['result']->gameName;
            $data['review'] = $this->GameModel->getReviews($slug);
        }
        else
        {
            $data['title'] = "Couldn't find that game!";
        }
        $data['username'] = get_cookie('username');
        $this->load->view('game',$data);
        
    }

    public function getComments($id ="")
    {
        $comments = $this->GameModel->getComments($id);
        echo json_encode($comments);
    }

    public function addComments($reviewID = "", $userID = "", $comment = ""){

        $reviewID = $this->input->post('reviewID');
        $userID = $this->input->post('userID');
        $comment = $this->input->post('comment');

        $this->GameModel->addComments($reviewID, $userID, $comment);
    }
}