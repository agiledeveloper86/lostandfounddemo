<?php
//creating the page_items_list child class  from Page parent class 
class page_items_list extends Page {

//inhariting
      function init(){

//instantiating
      parent::init();

//adding jUI tab features
      $tt = $this->add('Tabs');

//adding tabs and setting model to it
      $t = $tt->addTab('Found Items');
      //$t->add('Grid')->setModel('Item_Found');
      $t->add('View_ItemList')->setModel('Item_Found');

      $t = $tt->addTab('Lost Items');
      //$t->add('Grid')->setModel('Item_Lost');


//adding a custom list for lost items with the help of lister and templates
      //$t->add('CompleteLister', null, null, array('list/items'))->setModel('Item_Lost');

//making cutom list more compact and portable
      $t->add('View_ItemList')->setModel('Item_Lost');






	}
} 