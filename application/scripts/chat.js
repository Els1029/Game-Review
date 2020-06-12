$(document).ready(function(){
    var socket = io.connect("http://localhost:8080");

    console.log("Attched");

    $("#chat").submit(function(e){
        e.preventDefault();

        //Send data
        socket.emit("client message", $('#message').get(0).value);
        $('#message').get(0).value = "";
    });

    socket.on("server message", function(data){
        $("#chatspace").append(data + "<br>");
    });
})