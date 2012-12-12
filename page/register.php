<?php


//creating page_register child from page parent
class page_register extends Page {

    function init() {
        parent::init();
        $page = $this;

        
//adding model to the form
//spacifing fields to the form 
        $form = $this->add('Form');
        $form->setModel('User', array('email', 'password'));

//add submit button with 'Register' label on it to the form
        $form->addSubmit('Rgister');

 
//showing jscript message after form submission
        if ($form->isSubmitted()){

        	$form->update();
        	$form->js()->univ()
        	      ->successMessage('We have sent you confirmation e-mail')
        	      ->execute();


        }



  
    }

}

