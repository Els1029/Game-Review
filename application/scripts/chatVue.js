// var Vue = require('vue');

// Vue.use(require('vue-resource'));

var chat = new Vue({
    el:"#chat",
    data:{
        chatStyle: {
            display: 'block',
            position: 'fixed',
            bottom: '0',
            right: '0',
            //border: '3px solid #f1f1f1',
            backgroundColor: 'white',
            zIndex: '3',
        },
        test:{
            display: 'none'
        },
        showChat: false,
        allowChat: true
    },
    created(){
        $(document).ready(function(){
           
            //this.socket = io.connect("http://localhost:8080");
            var  socket =io.connect("http://localhost:8080");
            console.log("Attched");

            $("#chat").submit(function(e){
                e.preventDefault();
                var message =$('#message').get(0).value;
                if(message != "")
                {
                    $.get('http://localhost/games-review/loginAs', function(response,status){
                        var data ={};
                        data['message'] = message;
                        data['username'] = response ;

                        var requestData =JSON.stringify(data);
                        //Send data
                        socket.emit("client message", requestData);
                        $('#message').get(0).value = "";
                    });
                }
            });

            socket.on("server message", function(data){
                var messageData =JSON.parse(data);
                var stringUser = "Not Changed"; 

                if(messageData['username'] != "")
                {
                    $.get('http://localhost/games-review/isAdmin/' + messageData['username'], function(response,status){
                        if(response === "1")
                        {
                            stringUser = "<p id='Admin'>"+ messageData['username']+": ";
                        }
                        else
                        {
                            stringUser = messageData['username']+": "; 
                        }

                        $("#chatspace").append(stringUser+messageData['message'] + "<br>");
                    });
                }
            });

            // socket.on("connect", function(){
            //     console.log("Hello");
            //     //this.$nextTick(function() {
            //     this.btnStyle= {dispaly: 'block'};
            //     alert("Connected" + this.showBtn);
            // });
            // socket.on("disconnect", function(){
            //     this.btnStyle= {dispaly: 'none'};
            //     this.test = {
            //         display: 'none'
            //     };
            //     alert("Connected" + this.showBtn);
            // });
        })
    },
    methods:{
        openForm: function() {
            console.log("Opened Form");
            this.test = {
                display: 'block'
              };
            this.showChat = true;
        },
        closeForm: function() {
            console.log("Closed Form");
            this.test = {
                display: 'none'
            };
            this.showChat = false;
        },
        toggleForm: function(){
            if(this.showChat)
            {
                this.closeForm();
            }
            else
            {
                this.openForm();
            }
        }

    }
    // computed:{
    //     showBtn() {
    //         return showBtnVar
    //     }
    // }
})