<?php

//creating Model_Item child from Model_Table parent
class Model_Item extends Model_Table {

//adding table from db
	public $table="item";
	function init(){
		parent::init();

//adding fields to the Table		
		$this->addField('title');
		$this->addField('description')->type('text');
		$this->addField('is_found')->type('boolean');


//adding relationship
		//$this->hasOne('User');
		//$this->hasOne('User', null, 'id');
        //$this->hasOne('User', null, 'first_name');
        //$this->hasOne('User', null, 'last_name');
        //$this->hasOne('User', null, 'email');
		$this->hasOne('User', null, 'full_name');


		$this->hasOne('Type');
		//$this->hasOne('Type' null, 'id');
		//$this->hasOne('Type' null, 'name');

		$this->hasOne('Country');
		//$this->hasOne('Country', null, 'id');
		//$this->hasOne('Country', null, 'name');
		//$this->hasOne('Country', null, 'code');
	}

//for saving 'mark as found'
	function markAsFound(){
		$this['is_found'] = true;
		$this->save();
	}
}