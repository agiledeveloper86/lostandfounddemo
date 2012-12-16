<?php
//creating the Model_Item_Lost child class  from Model_Item parent class
class Model_Item_Lost extends Model_Item {
	
//inhariting
		function init(){

//instantiating
		parent::init();

//adding condition for enum 
	    $this->addCondition('state', 'lost');

           
	
	}
}