<?php
class HomeModel extends CI_Model{

    public function __construct()
    {
        $this->load->database();
    }

    //Get for all games
    public function getGame()
    {
        // You can use the select, from, and where functions to simplify this as seen in Week 13.
        $query = $this->db->query("SELECT * FROM games");
        return $query->result();


        // $url = 'https://api-v3.igdb.com/games/';
        // $data = array('user-key' => '4755398bf761162561240935a156306a');
        // $data = http_build_query($data);
        
        // // use key 'http' even if you send the request to https://...
        // $options = array(
        //     'http' => array(
        //         'header'  => "user-key: 4755398bf761162561240935a156306a\r\n",
        //         'method'  => 'POST',
        //         'content' => $data
        //     )
        // );

        // $context  = stream_context_create($options);
        // $result = file_get_contents($url, false, $context);
        // if ($result === FALSE) { return null;}

        //return $result;
    }

    //Get the details for a game once it has been clicked on.
    public function getReview($slug = FALSE)
    {
        
    }
}