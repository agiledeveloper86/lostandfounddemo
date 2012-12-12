<?php

//creating Model_User child from Model_Table parent
class Model_User extends Model_Table {

//adding table from db
	public $table="user";
	function init(){
		parent::init();

//adding fields to the Table
		$this->addField('first_name')->mandatory('Enter first name');
		$this->addField('last_name')->mandatory('Enter last name');
		$this->addField('email')->mandatory('Email is required');
		$this->addField('password')->mandatory('Choose a suitable password')->display('password');

//adding expression
		$this->addExpression('full_name')->set('concat(first_name," ",last_name)');

		$this->addField('is_admin')->type('boolean');

//adding relationship
		$this->hasMany('Item');
	}
}