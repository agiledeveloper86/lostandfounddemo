<?php
//creating Model_Item child from Model_Table parent
class Model_Item extends Model_Table {
	public $table="item";
	function init(){
		parent::init();
		
		

//adding fields to the Table
		$this->addField('title');
		$this->addField('description')->type('text'); //use of type

		
	}
}