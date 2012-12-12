<?php

//creating page_dsql child from page parent
class page_dsql extends Page {
	function init(){
		parent::init();


/* 
//exmp1
//printing content of a particular field of a particular table

	$q=$this->api->db->dsql()->table('user')->field('first_name')->getOne();
	echo $q;
	exit;

/* */





/* 
// exmp2
//printing content of a particular field of a particular table-->same as above.
	
    
    $q=$this->api->db->dsql();
    //$q->debug();
    $name = $q->table('user')->field('first_name')->getOne();
    echo $name;
    exit;

/*	*/

/* */
//exmp3-->joining


	/* 
	//3a-->printing all data of a particular field of a particular table..
	
	$q=$this->api->db->dsql();
    
    $q->table('item')->field('title');
	
	//$q->debug();

            foreach($q as $row){
			echo'I lost my '.$row['title'].
				'<br/>';
		}
	exit;
    /* */


    /* 
	//3b-->printing all data of two selected fields of a particular table..
	$q=$this->api->db->dsql();
    
    $q->table('item')->field('title')->field('description');
	
	//$q->debug();

            foreach($q as $row){
			echo'I lost my '.$row['title'].
			    ' whose description is '.$row['description'].
				'<br/>';
		}
	exit;

    /* */



	/* 
	//3c-->joining two differnt fields of two different tables..
	$q=$this->api->db->dsql();
    
    $q->table('item')->field('title');
	$q->join('user');
	$q->field('first_name');
	
	//$q->debug();

            foreach($q as $row){
			echo $row['title'].
				' by '.$row['first_name'].
				'<br/>';
		}
	exit;

    /* */
	

	/* 
	//3d-->joining three differnt fields of three different tables..
	$q=$this->api->db->dsql();
    
    $q->table('item')->field('title');
	$q->join('user');
	$q->field('first_name');
	$q->join('country');
	$q->field('name');
	
	
	//$q->debug();

            foreach($q as $row){
			echo $row['title'].
				' by '.$row['first_name'].
				' in '.$row['name'].
				'<br/>';
		}
	exit;

    /* */


	/* 
	//3e-->joining multiple fields of different tables..
	$q=$this->api->db->dsql();
    
    $q->table('item')->field('title')->field('description');
	$q->join('user');
	$q->field('first_name')->field('last_name');
	$q->join('country');
	$q->field('name')->field('code');
	
	
	//$q->debug();

            foreach($q as $row){
			echo $row['title'].
			    ' whose description is '.$row['description'].
				' lost by '.$row['first_name'].' '.$row['last_name'].''.
				' in '.$row['name'].' with country code '.$row['code'].
				'<br/>';
		}
	exit;

    /* */


/* 
//exmp4-->joining and shorting with where

	$q=$this->api->db->dsql();

    $q->table('item')->field('title');
	$q->join('user');
	$q->field('first_name');
	$q->join('country');
	$q->field('name');
	$q->where('email', 'joe@example.com'); //field='email'  and expression='joe@example.com'
	
	//$q->debug();

            foreach($q as $row){
			echo $row['title'].
				' lost by '.$row['first_name'].
				' in '.$row['name'].
				'<br/>';
		}
	exit;
		
    /* */


    

/* 
//exmp5-joining, sub-queries and shorting.. 
	 	$q=$this->api->db->dsql();

		$q->table('item')->field('title');
		$q->field( $q->expr('length(title)'), 'len' );
		$q->join('user');
		$q->field('first_name');
		$q->join('country');
		$q->field('name');
		
		$q->where('email', 'joe@example.com');

		//$q->debug();


            foreach($q as $row){
			echo $row['title']." (".$row['len'].")".
				' lost by '.$row['first_name'].
				' in '.$row['name'].
				'<br/>';
		}
	exit;
    /* */




/* 
//exmp6-->not explained yet...
	 	$q=$this->api->db->dsql();

		$q->table('item')->field('title');
		$q->field( $q->expr('length(title)'), 'len' );
		$q->join('user');
		$q->field('first_name');
		$q->where('first_name',$q->getField('title'));

		//$q->debug();



		foreach($q as $row){
			echo $row['title']." (".$row['len'].")".
				' by '.$row['first_name'].
				' in '.$row['country'].
				'<br/>';
		}
	    exit;

    /* */



        //$q=$this->api->db->dsql();
        //$q->debug();
        //$q->where('email','joe@example.com');
		//$q->field($q->expr('(select name from country where country.id=country_id)'),'country');
        //$q->getField('country_id')
        // exit;
		
		
	}
}