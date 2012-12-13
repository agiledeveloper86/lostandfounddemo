<?php

//creating Frontend child from ApiFrontend parent
class Frontend extends ApiFrontend {
    function init(){
        parent::init();

//making connection with db        
        $this->dbConnect();

//to include agiletoolkit
        $this->requires('atk','4.2.0');

//adding jQuery features
        $this->add('jUI');
		
		
//adding menu menu		
		$this->add('Menu',null,'Menu')

//adding meu items
            ->addMenuItem('index','welcome')
            ->addMenuItem('index','logout')
            ;

    }
}

