<?php
class UserModel extends CI_Model{

    public function __construct()
    {
        $this->load->database();
    }

    //Check if a user is an admin.
    public function checkAdmin($username = "")
    {
        $query = $this->db->query("SELECT isAdmin FROM users WHERE username = '$username'");
        //echo $query->row()->isAdmin;
        return $query->row();
    }

    public function getUserID($username = "")
    {
        $query = $this->db->query("SELECT UID FROM users WHERE username = '$username'");
        //echo $query->row()->UID;
        return $query->row();
    }

    //Checks if the user is vaild
    function checkUser($username ="", $password = "")
    {
        $query = $this->db->query("SELECT * FROM users WHERE username = '$username' AND userpassword = '$password';");
        return $query->row();
    }

    function updatePassword($password = "")
    {
        $this->db->set('UserPassword', $password);
        $this->db->where('UserName', get_cookie('username'));
        $this->db->update('users');
        
    }
}