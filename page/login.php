<?php

//creating page_login child from Page parent
class page_login extends Page {
	function init() {

          parent::init();
          $page = $this;


//redirecting to index page
          $this->api->redirect('/');

	}
}