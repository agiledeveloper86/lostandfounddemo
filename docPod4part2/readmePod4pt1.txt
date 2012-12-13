==========================================================================================
podcast1n2
==========================================================================================
step1
--------------------------------------------------
1.create a db named lostandfounddemo with phpmyadmin
2.import db.sql
3.copy atk4 folder, atk4-addons folder , config-default.php, config-distrib.php and index.php to local
4.make a copy of config-default.php-->rename it config.php
5.configure config.php-->mysql://root:root@localhost/example-->mysql://dbusername:dbpassword@localhost/dbname
6.local/index.php-->[$api=new Frontend('sample_project');----> $api=new Frontend('lostandfounddemo');]
7.lib/Frontend.php-->create it
                  -->creating Frontend child from ApiFrontend parent
                  -->making connection with db
                  -->to include agiletoolkit
                  -->adding jQuery features
                  -->adding menu menu
                  -->adding meu items
8.page/index.php-->create it
                -->creating page_index child from Page parent
9.run wamp
10.enter correct url to run app
----------------------------------------------------

+step2
-------------------------------
local/lib--Frontend.php-->adding authentication feature.
                       -->witelistening index and register page from authentication.
                       -->menu for logged in user-->welcome, report a lost item, log out.
                       -->exta menu for admin user not showing to the other logged in user -->Admin
                       -->menu for general user-->welcome, log in, register
                       -->checking for authentication.


local/lib/Model-->Item.php-->create it.
                          -->creating Model_User child from Model_Table parent.
                          -->adding table from db.
                          -->adding fields to the Table.
                          -->use of type.
               -->User.php-->create it.
                          -->creating Model_User child from Model_Table parent.
                          -->adding table from db.
                          -->adding fields to the Table.
                          -->use of mandatory.
                          -->use of display.
                          -->use of type.
                


local/page-->admin.php-->create it.
                       -->creating page_index child from page parent.
                       -->redirecting to index page if logged in user is not a Admin User.
                       -->CRUD for User and Item models with jUI features.
          -->index.php-->creating welcome screen for logged in user.
          -->login.php-->create it.
                      -->creating page_login child from Page parent.
                      -->redirecting to index page.
          -->register.php-->create it.
                          -->creating page_register child from page parent.
                          -->adding form to the page
                          -->adding model to the form
                          -->spacifing fields to the form 
                          -->add submit button with 'Register' label on it to the form
                          -->showing jscript message after form submission

local/page/items-->lost.php-->creating page_items_lost child from page parent.
add an admin user with admin@website.com->email and password->password. 
export db file rename it pod1n2export.db and put in in the doc of next podcast.



end of step2........
end of podcast1n2......
===================================================================================================================




================================================================================================================
podcast3
=================================================================================================================
local/doc-->import new db from db_for_part3 for podcast3
create a admin user with email->admin@website.com and passwoed->password


local/lib/Model-->Item.php-->adding relationship
                          -->for saving 'mark as found'
               -->User.php-->adding relationship
                          -->adding expression
               -->Country.php-->create it
                             -->creating Model_Country child from Model_Table parent
                             -->adding table from db
                             -->adding fields to the Table
               -->Type.php-->create it
                          -->creating Model_Type child from Model_Table parent
                          -->adding table from db
                          -->adding fields to the Table


local/page-->admin.php-->CRUD for User Model with jUI features
                      -->CRUD for Item Model with jUI features
                      -->CRUD for Type Model with jUI features
                      -->CRUD for Type Model with jUI features
                      
          -->dsql.php-->creating page_dsql child from page parent
                      -->printing content of a particular field of a particular table
                      -->joining multiple data of different fields of different table.
                      -->joining and shorting with where
                      -->joining, sub-queries and shorting..
          -->model.php-->creating page_model child from page parent
                       -->printing data of a field of a particular table with condition..
                       -->referencing
                       -->joining
                       -->joining, outputting with grid


local/page/model-->details.php-->creating page_model_details child from page parent
                              -->for catching ajax request from 'Details' button from page/model.php.
                              --->some features will be updated later.

export database as podcast3.sql and put in pod4part1 doc folder                              


end of podcast3.......
===============================================================================================================



==================================================================================================================
podcast4
=================================================================================================================

part1
---------------------------------------------------------------------

import forLAFpt1.sql to the database

add new user with email->user1@website.com and password->password

local/lib--Frontend.php-->new menu for user preference.
                       --->new menu for reporting item preference.
                       -->change in AddMenuItem from 'items/lost' to 'items/reoprt' 

local/lib/Model-->Item.php-->adding a field called state to Item Model 
                             in item db with enum feature
                          -->use of type
                          -->use of enum
                          -->use of radio

local/page/-->admin.php-->on demand loading of country
                       -->"function init()" and "parent::init();" deleted;
                       -->function "page_index()" added for ading a admin/index subpage under pape_admin page
                       -->function "country_index()" added for ading a admin/country subpage under pape_admin page
                       -->ading a paginator for admin/country

local/page/-->user.php-->for user preferences
                      -->adding a form
                      -->adding the fields (of logged in user) of the User model to the form
                      -->specifing desired fields of a form by using array features
                      -->adding a password confirmation field
                      -->adding a form submit button to the form
                      -->checking for mismatched password with if condition
                      -->adding a js alert after form submission
                      -->alternative implimentation for mismatched password checking
                      -->checking for mismatched password with exception handler
local/page/lost-->report.php-->renaming from lost.php
                            -->creating page_items_report child from page parent
                            -->assining Item model it to a variable
                            -->adding radio button feature to Item Model
                            -->adding a debuging features
                            -->attaching particular loggedin user to the report page
                            -->adding a form
                            -->adding selected fields of Item model with array features
                            -->adding a submit button

end of part1 of podcast4
-------------------------------------------------------------------