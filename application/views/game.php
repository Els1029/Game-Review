<html>
<head>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Link CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<!-- This css puts the content of the page below the navbar-->
<style>
  body { padding-top: 70px; }

  #makeCommentBox{
    position: relative;
    z-index: 3;
  }
</style>

<title><?php echo $title;?></title>
    <!-- These classes onlywork if you attach Bootstrap. -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <!-- Add your code here to create a nav bar -->
      <!-- You can use code from your previous assignment -->
    <a class="navbar-brand" href="./">Game Review</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
      <?php
        if($username === NULL)
        {
          echo '<li class="nav-item">';
          echo '  <a class="nav-link" href="./login">Login</a>';
          echo '</li>';
        }
        else
        {
          echo '<li class="nav-item dropdown">';
          echo '<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">';
          echo $username;
          echo '</a>';
          echo '<div class="dropdown-menu" aria-labelledby="navbarDropdown">';
          echo '  <a class="dropdown-item" href="./account">Account</a>';
          echo '  <div class="dropdown-divider"></div>';
          echo '  <a class="dropdown-item" href="./logout">Logout</a>';
          echo '</div>';
          echo '</li>';
        }
        ?>
      </ul>
      <!-- <form class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form> -->
    </div>
  </nav>
</head>

<body>
  <div class="container p-1">
    <?php echo '<h1>'.$result->gameName.'</h1>';?>
    <div class="row">
        <?php 
            // These classes onlywork if you attach Bootstrap.
            if($result != null)
            {

                echo '<div class="col-lg-3 col-md-4 col-sm-12">';
                $thisImage = $result->gameImage;
                $thisSlug = $result->gameSlug;
                echo '<img src="'.base_url().'application/images/'.$thisImage.'" alt="'.$thisSlug.'" width="100%" height="auto">';
                echo '</div>';

                echo '<div class="col-md-8 col-sm-12">';
                echo $result->gameBlurb;
                echo '</div>';
                
                echo '<div id="review" class="container">';
                foreach ($review as $row)
                {
                    echo '<div id="'.$row->ID.'" class="col-12">';
                    echo '<div class="col-12 card">';
                    echo $row->gameName;
                    echo '<br>';
                    echo $row->GameReview;
                    echo '<br>';
                    echo '<a href="javascript:void(0)" class="stretched-link" v-on:click="toggleComment('.$row->ID.')"></a>';
                    //echo 
                    echo '<div id="commentSec'.$row->ID.'"></div>';
                    echo '</div>';
                    echo '</div>';
                }
                echo '</div>';
            }
        ?>
    </div>
  
  </div>
</body>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!-- Don't forget to load in Vue abd socket.io -->
<script src="https://cdn.jsdelivr.net/npm/vue"></script>




<!-- Load in your custom scripts -->
<script src ="application/scripts/commentsVue.js"></script>


<!-- Bootstrp scripts 
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
-->
</html>