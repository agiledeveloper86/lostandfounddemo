<?php

//creating page_index child from page parent
class page_admin extends Page {
//ading a admin/index subpage under pape_admin page
	function page_index () {
	
		

//redirecting to index page if logged in user is not a Admin User
		$is_admin = $this->api->auth->model['is_admin'];
		if(!$is_admin)
			{$this->api->redirect('index');}
	    


//adding jUI tab features
		$tabs = $this->add('Tabs');

//CRUD for User model with jUI features
		$tab = $tabs->addTab('User Admin');
		$tab = $tab->add('CRUD')->setModel('User');

//CRUD for Item models with jUI features	
		$tab = $tabs->addTab('Item Admin');
		$tab = $tab->add('CRUD')->setModel('Item');

//on demand loading of country as it has long content list
		$tab = $tabs->addTabURL($this->api->url('./country'), 'Country Admin');


//CRUD for Country model with jUI features
	//$tab = $tabs->addTab('Country Admin');
	//$tab = $tab->add('CRUD')->setModel('Country');

//CRUD for Type model with jUI features
		$tab = $tabs->addTab('Item Type');
		$tab = $tab->add('CRUD')->setModel('Type');

    }

//ading a admin/country subpage under pape_admin page
    function page_country(){
    	$c = $this->add('CRUD');
    	$c->setModel('Country');
//ading a paginator
    	if($c->grid)
    		{$c->grid->addPaginator(50);}



    }


}
