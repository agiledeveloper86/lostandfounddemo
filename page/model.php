<?php

//creating page_model child from page parent
class page_model extends Page {
	function init(){
		parent::init();
		$page = $this;





/* 
//exmp1a-->printing data of a field of a particular table with condition..

		$m = $this->add('Model_User');

		//$m->debug();

		$m->addCondition('is_admin',true);

		$name = $m->loadAny() -> get('first_name');
		echo $name;
		exit;

	/*  */	 	

/* 
//exmp1b-->printing data of a field of a particular table with condition..

		$m=$this->add('Model_User');

	    //$m->debug();	

		$m->addCondition('is_admin',false);

		$name = $m->loadAny() -> get('first_name');
		echo $name;
		exit;

	/*  */


/* 
//exmp1c-->printing data of a field of a particular table with condition..

		$m=$this->add('Model_User');

		//$m->debug();

		$m->addCondition('is_admin',false);

		$name = $m->loadAny() -> get('last_name');
		
		echo $name;
		
		exit;

	/*  */




/*  
//exmp2a-->referencing-->printing data of three differnt fields of three different tables with referencing..
//        -->models in local/lib/Model folder are modified first.
//        -->proper relationship should be defined for this.
		
		$cnt=0;
		
		$m=$this->add('Model_Item');
        $this->api->db->addHook('query',function()use(&$cnt){ $cnt++; });
		//$m->debug();

            foreach($m as $junk){
			        echo $m['title'].
				    ' by '.$m->ref('user_id')->get('first_name').
				    ' in '.$m->ref('country_id')->get('name').
				    '<br/>';
			}
        var_Dump($cnt);
        exit;
		        	
/* */



/*  
//exmp2b-->referencing-->printing three differnt fields of three different tables with referencing..
//        -->models in local/lib/Model folder are modified first.
//        -->proper relationship should be defined for this.
		
		$cnt=0;
		
		$m=$this->add('Model_Item');
        $this->api->db->addHook('query',function()use(&$cnt){ $cnt++; });
		//$m->debug();

            foreach($m as $junk){
			        echo $m['title'].
				    ' by '.$m->ref('user_id')->get('last_name').
				    ' in '.$m->ref('country_id')->get('code').
				    '<br/>';
			}
        
        var_Dump($cnt);
        exit;
		        	
/* */






/* 
//exmp3-->referencing simplified
//        -->models in local/lib/Model folder are modified first.
//        -->proper relationship should be defined for this.
		$cnt=0;
		$this->api->db->addHook('query',function()use(&$cnt){ $cnt++; });
		
		$m=$this->add('Model_Item');
        //$m->debug();
		
            foreach($m as $junk){
			        echo $m['title'].
				    ' by '.$m['user'].
				    ' in '.$m['country'].
				    '<br/>';
        
		}
        
        var_Dump($cnt);
        exit;
		        	
    /* */

	


/* 
//exmp4-->joining
//        -->models in local/lib/Model folder are modified first.
//        -->proper relationship should be defined for this.
		$cnt=0;
 
	$m=$this->add('Model_Item');
		
        $m_user = $m->join('user');
		$m_user->addField('first_name');
		$m_user->addField('email');

		$m_country = $m->join('country');
		$m_country->addField('code');
      
        //$m->debug();  
        

    
		foreach($m as $junk){
			echo $m['title'].
				' by '.$m['first_name'].' ('.$m['email'].')'.
				' in '.$m['country'].' ('.$m['code'].')'.
				'<br/>';
		}
		

		//var_Dump($cnt);
		exit;

/* */

/* 
//exmp5-->joining, outputting with grid
//        -->models in local/lib/Model folder are modified first.
//        -->proper relationship should be defined for this.
    
    
	    $m=$this->add('Model_Item');
		
        $m_user = $m->join('user');
		$m_user -> addField('first_name');
		$m_user -> addField('email');

		$m_country = $m->join('country');
		$m_country ->addField('code');

		$this->add('Grid')->setModel($m);
      
        
/* */



	
/* 
//exmp6
//outputting with grid..

		$m=$this->add('Model_User');

		$crud=$this->add('CRUD');
		$crud->setModel($m);
/* */



/* 
//exmp7--advanced
	
    
		$m=$this->add('Model_User');

		$m->addExpression('full_name')->set('concat(first_name," ",last_name)');

		$crud=$this->add('CRUD');
		$crud->setModel($m);

	/* */


/* 
//exmp8--advanced
	
  
		$m=$this->add('Model_User');



		$m->addExpression('full_name')->set('concat(first_name," ",last_name)');
				$m->addExpression('items_lost')->set(function($m,$q){
		            return $q->dsql()->table('item')->field('count(*)')
		                   ->where('item.user_id', $m->getElement('id'));	        
		});

		$m->debug();

		$crud=$this->add('CRUD');
		$crud->setModel($m);

	/* */


	
/* 
//exmp9--advanced
		$m=$this->add('Model_User');
		$m->debug();

		$m->addExpression('full_name')->set('concat(first_name," ",last_name)');
				$m->addExpression('items_lost')->set(function($m,$q){
			    return $m->refSQL('Item')->count();
		});
        

		$crud=$this->add('CRUD');
		$crud->setModel($m);
       
	/* */




/* 
//exmp10--reference	

	    $m=$this->add('Model_Item');

		$m->loadAny();

		$item = $m['title'];
		$name = $m->ref('user_id')->get('first_name');

		echo $item.' lost by '.$name;

		exit;

	/*  */


	
/* */
//exmp11---advanced--->creating a 'Mark as Found' button in local/model.php page.

		$m=$this->add('Model_User');

		$m->addExpression('full_name')->set('concat(first_name," ",last_name)');
				$m->addExpression('items_lost')->set(function($m,$q){
			    return $m->refSQL('Item')->count();
		});
        

		$crud=$this->add('CRUD');
		$crud->setModel($m);
        if($crud->grid)$crud->grid->addColumn('expander','details');
	
	/* */
		


	
    //$m->debug();
    //$cnt=0;--->counter hook not working
	//$this->api->db->addHook('query',function()use(&$cnt){ $cnt++; });--->counter hook not working
	//var_Dump($cnt);--->counter hook not working
	//$m=$this->add('Model_User');
	//$m->addExpression('full_name')->set('concat(first_name," ",last_name)');
    //return $m->refSQL('Item')->count();
	//$crud=$this->add('CRUD');
	//$crud->setModel($m);
	//if($crud->grid)$crud->grid->addColumn('expander','details');
    //$m->addExpression('lost_items')->set(function($m,$q){ });
    //exit;
	}
}