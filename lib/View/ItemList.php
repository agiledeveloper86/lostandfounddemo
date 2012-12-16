<?php

//adding a ItemList View as CompleteLister
class View_ItemList extends CompleteLister {

//adding formatRow function
	function formatRow(){
	parent::formatRow();

//generating link custom address for items.html
	//$this->current_row['link']=123;
	//$this->current_row['link'] = $this->current_row['id'];
	//$this->current_row['link'] = $this->model['id'];
	$this->current_row['link'] = $this->api->url('./details',
	         array('id'=> $this->model->id));


	}

//adding list/items as defaultTemplate 
	function defaultTemplate(){
		return array('list/items');

	}
}