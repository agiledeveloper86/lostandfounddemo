<?php


//creating page_register child from page parent
class page_register extends Page {

    function init() {
        parent::init();
       

        
//adding form to the page
        $form = $this->add('Form');

//adding model to the form
//spacifing fields to the form 
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

