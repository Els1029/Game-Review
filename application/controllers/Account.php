<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Account extends CI_Controller{
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
        if(get_cookie('username') != null)
        {
            echo get_cookie('username');
            $data['title'] = 'Update Acount';
            $data['username'] = get_cookie('username');

            $this->load->view('account', $data);
        }
        else
        {
            redirect('http://localhost/games-review');
        }
    }


    public function updatePassword()
    {
        $password = $this->input->post('password');    

        echo $password;

        $this->UserModel->updatePassword($password);
        redirect('http://localhost/games-review/account');
    }
}