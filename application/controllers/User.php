<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//defined('BASEPATH') OR exit('No direct script access allowed');
class User extends CI_Controller{
    public function __construct()
    {
        parent::__construct();
        // Consider if it would be best to autoload some of the helpers from here.
        $this->load->helper('url');
        $this->load->helper('url_helper');
        $this->load->helper('html');
        $this->load->helper('cookie');

        // Load in your Models below.
        $this->load->model('UserModel');
        
        // Consider creating new Models for different functionality.
    }

    public function index($slug = "")
    {
        
    }

    public function checkLoggedInAs()
    {
        //header('Content-Type: text/plain');
        if(get_cookie('username') != null)
        {
            echo get_cookie('username');
        }
    }

    public function checkAdmin($username='')
    {
        // if($username != '')
        // {
            // echo "Username Supplied <br>";
            $result = $this->UserModel->checkAdmin($username);
            echo $result->isAdmin;
            //echo $result['isAdmin'];
            //echo ; 
        // }
        // echo "This is working";
    }

    public function getUserID($username='')
    {
        $result = $this->UserModel->getUserID($username);
        echo $result;
        echo $result->UID;
    }
}