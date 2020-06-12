README 

 

Requirements 

Nodejs (and npm) 

Xampp 

 

 

Setup 

Start Xampp and then start Apache and MySQL 

Place this folder inside the htdocs folder in the Xampp directory 

 

Database  

Then go to  

http://localhost/phpmyadmin/index.php 

 

Click import and import the file ‘game-review.sql’ from ‘application\SQL’ 

 

Chat server 

Open a node terminal and run the following line 

npm i socket.io -g 

 

Then run 

cd [PATH_TO_XAMPP]/game-review/application/script 

node server.js 

 

Things to note: 

This site uses a short piece of code that removes the ‘index.php’ from the URL that is normally present with codeigniter. If there are issues look here: 

https://codeigniter.com/user_guide/general/urls.html 

 

 

Documentation: 

Views: 

home.php - is the homepage. Here you can see all the games and click on them to see the reviews. This is also where the chat feature is located on the site 

login.php - is the login page. Allows the user to login. Use user ‘Lecturer’ and password ‘Example’ for an admin user and user ‘John’, password ‘John’ for a regular user. 

game.php - where you view the review and info about the game selected on the homepage. The user can add comments to review here 

account.php - allows the user to make changes to their account 

Controllers: 

Account.php - controller for account.php, passes the username and then takes the new password and passes to the user module 

Game.php - controller for game.php, passes all the reviews 