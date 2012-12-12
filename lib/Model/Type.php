<?php

//creating Model_Type child from Model_Table parent
class Model_Type extends Model_Table {

//adding table from db
	public $table="item_type";
	function init(){
		parent::init();

//adding fields to the Table
		$this->addField('name');
	}
}