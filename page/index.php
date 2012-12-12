<?php

//creating page_index child from page parent
class page_index extends Page {
	function init(){
		parent::init();
		$page = $this;

		


//creating welcome screen for logged in user
		if($this->api->auth->isLoggedIn()){

            $welcome = $this->add('View_Info')->set('Hello, ' .$this->api->auth->model['first_name']);
            $welcome = $welcome->add('Text')->set('.....');

		}


		
	}
}