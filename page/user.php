<?php
class page_user extends Page {
	function init() {
		parent::init();

//adding a form.
		$form = $this->add('Form');

//adding the fields (of logged in user) of the User model to the form. 
//specifing desired fields of a form by using array features.
		$form->setModel($this->api->auth->model, array('first_name', 'last_name', 'email', 'password'));

//adding a password confirmation field		
		$form->addField('password', 'password_confirm', 'Confirm Password');

//adding a form submit button to the form. 
		$form->addSubmit('save');


/* */
//submitting the form properly
        if($form->isSubmitted()) {

//checking for mismatched password with if condition
        	if($form->get('password') != $form->get('password_confirm')){
        		$form->displayError('password_confirm', 'Passwords should match.');

        	} 

//adding a js alert after form submission.
			$form->update();
			$form->js()->univ()->successMessage('saved')->execute();


		}
/* */

/* 
//alternative implimentation
//checking for mismatched password with exception handler
        $form->onSubmit(function($form){
            if($form->get('password') != $form->get('password_confirm')){
        	
//throwing exception
        		throw $form->exception('Password missmatch','ValidityCheck')
        		           ->setField('password');
        	} 

			$form->update();
			$form->js()->univ()->successMessage('saved')->execute();


		});
/* */




	}
}
