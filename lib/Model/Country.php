<?php

//creating Model_Country child from Model_Table parent
class Model_Country extends Model_Table {

//adding table from db
	public $table="country";
	function init(){
		parent::init();

//adding fields to the Table
		$this->addField('code');
		$this->addField('name');

		$this->addField('eu_member');

	}
}