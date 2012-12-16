<?php

//Reporting of a lost item 
//creating page_items_report child from page parent
class page_items_report extends Page {
	function init(){
		parent::init();

//assining Item model it to a variable 
		$m = $this->add('Model_Item');

//adding radio button feature to Item Model
		$m->getElement('state')->display('radio');
/* 
for showing all expression 
//adding debugging features
        $m->debug();

//showing the valua of all fields as grid(expression)
        $this->add('Grid')->setModel($m);

//cutting of the code
        return;
/* */

/* 
//for showing single expression 
//adding debugging features
        $m->debug();

//showing the valua of all fields as grid(expression)
        $this->add('Grid')->setModel($m, array('title'));

// cutting of the code
        return;
/* */
		
/* 
//adding a debuging features
		$m->debug();
		$m->tryLoadAny();
/* */

//attaching particular loggedin user to the report page 
		$m->set('user_id', $this->api->auth->model->id);

//adding a form
		$form = $this->add('Form');

//adding selected fields of Item model with array features
		$form->setModel($m, array('state', 'title', 'description', 'item_type_id', 'country_id'));

//adding a submit button
		$form->addSubmit('Report an Item');




		
		
	}
}