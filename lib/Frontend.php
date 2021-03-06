<?php

//creating Frontend child from ApiFrontend parent
class Frontend extends ApiFrontend {
    function init() {
        parent::init();
        

//connecting with db
        $this->dbConnect();

//for adding atk new version
        $this->requires('atk','4.2.0');


//add jquery features
        $this->add('jUI');
        

//adding authentication feature
       $this->add('Auth')->setModel('User');

//witelistening from authentication
       $this->auth->allowPage(array('register', 'index'));


       
        
//menu for logged in user      
        if($this->auth->isLoggedIn()){ 


        //initial menu for logged in user
        $menu = $this->add('Menu',null,'Menu')
            ->addMenuItem('index', 'Welcome')
        //menu for List
            ->addMenuItem('items/list', 'List')
            ->addMenuItem('items/report', 'Report an Item')
        //menu for user preference
            ->addMenuItem('user', 'User Preferences')
            ;
            

        //exta menu for admin user not showing to the other logged in user    
            $is_admin = $this->api->auth->model['is_admin'];
            if($is_admin){
                $menu->addMenuItem('admin', 'Admin');
            }
            
        //appending other extra menu for logged in user    
            $menu->addMenuItem('logout');
        

        //menu for general user
        } else {


            $menu = $this->add('Menu',null,'Menu')
            ->addMenuItem('index', 'Welcome')
            ->addMenuItem('Login')
            ->addMenuItem('register','Register')
            ;

        }
    


   //checking for authentication
   $this->auth->check();


    



             


        

    }
}

