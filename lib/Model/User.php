<?php

//creating Model_User child from Model_Table parent
class Model_User extends Model_Table {
	public $table="user";
	function init(){
		parent::init();


//adding fields to the Table
		$this->addField('first_name')->mandatory('Enter your first name above.'); //use of mandatory
		$this->addField('last_name')->mandatory('Enter your last name above.');   //use of mandatory
		$this->addField('email')->mandatory('Email is required.');                //use of mandatory
		$this->addField('password')->display('password');                         //use of display
        
        $this->addField('is_admin')->type('boolean');        //use of type


	}
}