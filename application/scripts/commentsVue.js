var review = new Vue({
    el:"#review",
    data:{
    },
    methods:{
        toggleComment: function(id){
            var commentSec = "#commentSec" + id;
            
            if($(commentSec).text() ==="")
            {
                this.addComments(id);
            }
            else
            {
                this.removeComments(id);
            }
        },
        addComments: function(id){
            var _t = this;
            $.get('http://localhost/games-review/getComments/'+id, function(response,status){
                var comments = JSON.parse(response);
                //console.log(comments);

                
                var commentSec = "#commentSec" + id;
                //adds making comments
                var commentSubmit = "Add a comment:<div id='makeCommentBox'><form id='addComment"+id+"'><input type='text' id='message' autocomplete='off' size=250></input><button id='sendbutton'>Send</button></form></div>";

                $(commentSec).append(commentSubmit);

                $("#addComment"+id).submit(function(e){
                    e.preventDefault();

                    //ADD COMENT TO DATABASE
                    $.get('http://localhost/games-review/loginAs', function(response,status){

                        var username = response;
                        // console.log("The URL of this page is: " + window.location.href);
                        // console.log("The URL of this page is: " + username);

                        var userComment =$('#message').get(0).value;

                        $.get('http://localhost/games-review/getUserID/'+username, function(response,status){

                            var UserID = response;

                            var data = {
                                reviewID: id,
                                userID: UserID,
                                comment: userComment
                            };

                            $.post('http://localhost/games-review/addComments', data)
                            .done(function(data){
                                $('#message').get(0).value = "";
                                _t.removeComments(id);
                                _t.addComments(id);
                            });

                        });


                        // $('#message').get(0).value = "";
                        // _t.removeComments(id);
                        // _t.addComments(id);
                    })
                });

                //adds comments from the database
                comments.forEach(function(comment){
                    console.log(comment);
                    var comBox ='<div class="col-12 card bg-light">' + comment['UserName'] + "<br>" + comment['UserComment']+'</div>';
                    $(commentSec).append(comBox);
                });
            });
        },
        removeComments: function(id)
        {
            var commentSec = "#commentSec" + id;
            $(commentSec).empty();
        }

    }
})