<?php
class GameModel extends CI_Model{

    public function __construct()
    {
        $this->load->database();
    }

    //Get for all games
    public function getGame($slug = null)
    {
        //echo $slug;
        //$query = $this->db->query("SELECT COUNT(*) FROM games WHERE gameSlug = '$slug'");
        
        // You can use the select, from, and where functions to simplify this as seen in Week 13.
        $query = $this->db->query("SELECT * FROM games WHERE gameSlug = '$slug'");
        
        //Returns the first result, slugs should be unique;
        return $query->row();

    }

    //Get the details for a game once it has been clicked on.
    public function getReviews($slug = null)
    {
        $query = $this->db->query("SELECT * FROM activeReviews WHERE slug = '$slug'");
        return $query->result();
    }

    public function getComments($id = null)
    {
        $query = $this->db->query("SELECT UserID,ReviewID,UserComment,UserName FROM gamescomments INNER JOIN users ON users.UID = gamescomments.UserID WHERE reviewID = $id");
        return $query->result();
    }

    public function addComments($id = null,$userID ='', $comment = '')
    {
        $data =array(
            'UserID' => $userID,
            'ReviewID' => $id,
            'UserComment' => $comment
        );
        
        $this->db->insert('gamescomments', $data);
    }
}