<?php

//creating Model_Item child from Model_Table parent
class Model_Item extends Model_Table {

//adding table from db
	public $table="item";
	function init(){
		parent::init();

//adding fields to the Table		
		$this->addField('title')->mandatory('Title should not be empty.');
		$this->addField('description')->mandatory('Description should be present')->type('text');                                  //use of type

//adding a field called state to Item Model for action field in item db with enum feature
		//$this->addField('state')->enum(array('lost', 'found'));                     //use of enum

//adding a field called state to Item Model for action field in item db		
		//$this->addField('state')->enum(array('lost', 'found'))
		//                          ->mandatory('true');   //use of mandatory
		//$this->addField('state')->enum(array('lost', 'found'))
		//                          ->display(array('form'=>'radio'))                  //use of radio 
		//                          ->mandatory('true');                              //use of mandatory
		$this->addField('state')->enum(array('lost', 'found'))->mandatory('true');    //use of mandatory
		
		$this->addField('is_found')->type('boolean');                                //use of type


//adding relationship
		//$this->hasOne('User');                        //for showing value of id field by default
		//$this->hasOne('User', null, 'id');            //for showing value of id field 
        //$this->hasOne('User', null, 'first_name');    //for showing value of first_name field
        //$this->hasOne('User', null, 'last_name');     //for showing value of last_name  field
        //$this->hasOne('User', null, 'email');         //for showing value of email field
		$this->hasOne('User', null, 'full_name');       //for showing first_name+last_name field


		$this->hasOne('Type');                 //for showing value of name field by default
		//$this->hasOne('Type' null, 'id');    //for showing value of id field
		//$this->hasOne('Type' null, 'name');  //for showing value of name field in properly



		$this->hasOne('Country');                       //for showing value of name field by default
		//$this->hasOne('Country', null, 'id');         //for showing value of id field
		//$this->hasOne('Country', null, 'name');       //for showing value of name field in properly
		//$this->hasOne('Country', null, 'code');       //for showing value of code field
	}

//for saving 'mark as found'
	function markAsFound(){
		$this['is_found'] = true;
		$this->save();
	}
}