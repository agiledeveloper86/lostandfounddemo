<?php

//creating page_index child from page parent
class page_admin extends Page {
	function init(){
		parent::init();
		
		

//redirecting to index page if logged in user is not a Admin User
		$is_admin = $this->api->auth->model['is_admin'];
		if(!$is_admin){$this->api->redirect('index');}
    

//CRUD for User and Item models with jUI features
	$tabs = $this->add('Tabs');
	$tab = $tabs->addTab('User Admin');
	$tab = $tab->add('CRUD')->setModel('User');
	$tab = $tabs->addTab('User Admin');
	$tab = $tab->add('CRUD')->setModel('Item');




	}
}
