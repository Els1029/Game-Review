var app = require("http").createServer();

var io = require("socket.io")(app);

io.on('connection', function (socket) {
    console.log("Someone has connected!");

    socket.on('client message', function(data){
        parsedData = JSON.parse(data);
        console.log(parsedData);

        if(Array.isArray(data))
        {
            console.log("Array " + data)
        }
        console.log("Client message: " + parsedData['message'] + ": from " + parsedData['username']);

        io.emit("server message", data);
    })
});

app.listen(8080,function(){
    console.log("Server Started.")
});