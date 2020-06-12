<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller{
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

    public function index()
    {
        //TEMP TO TEST

        // set_cookie('username','Lecturer','3600');
        // $data['username'] = get_cookie('username');
        // redirect('http://localhost/games-review');

        //real code
        if(get_cookie('username') == null)
        {
            
            $username = $this->input->post('username');
            echo $username;
            if($username == null)
            {
                //echo "Got no username";
                $data['title'] = 'Login';

                $this->load->view('login');
            }
            else{
                //echo "got a username";
                $password = $this->input->post('password');
                login($username, $password);
            }
        }
        else
        {
            redirect('http://localhost/games-review');
        }
    }

    public function vaildate()
    {

    }

    public function login()
    {
        $username = $this->input->post('username');
        $password = $this->input->post('password');    

        $result = $this->UserModel->checkUser($username, $password);
        if($result->UserName == $username)
        {
            set_cookie('username',$username,'3600');
            redirect('http://localhost/games-review');
        }
        else
        {
            $this->load->view('login');
        }
    }
}