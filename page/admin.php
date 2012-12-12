<?php

//creating page_index child from page parent
class page_admin extends Page {
	function init(){
		parent::init();
		$page = $this;
		

//redirecting to index page if logged in user is not a Admin User
		$is_admin = $this->api->auth->model['is_admin'];
		if(!$is_admin){$this->api->redirect('index');}
    


//adding jUI tab features
	$tabs = $this->add('Tabs');

//CRUD for User Model with jUI features
	$tab = $tabs->addTab('User Admin');
	$tab = $tab->add('CRUD')->setModel('User');

//CRUD for Item Model with jUI features	
	$tab = $tabs->addTab('Item Admin');
	$tab = $tab->add('CRUD')->setModel('Item');

//CRUD for Type Model with jUI features
	$tab = $tabs->addTab('Country Admin');
	$tab = $tab->add('CRUD')->setModel('Country');

//CRUD for Type Model with jUI features	
	$tab = $tabs->addTab('Item Type');
	$tab = $tab->add('CRUD')->setModel('Type');




	}
}
