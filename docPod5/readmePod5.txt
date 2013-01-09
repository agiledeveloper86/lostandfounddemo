==========================================================================================
podcast1n2--Starting your first Web Software project - Agile Toolkit Tutorial
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
                  -->adding menu
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
podcast3-->SQL, Dynamic Queries, Models, ORM - Agile Toolkit Data Stack
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
podcast4-->Creating Menu, New pages, Form validation and other custom UI in Agile Toolkit Tutorial
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


part2
----------------------------------
local/lib--Frontend.php-->menu for List
local/lib/Model-->Lost.php-->create it
                           -->creating the Model_Item_Found child class  from Model_Item parent class
                           -->inhariting
                           -->instantiating
                           -->adding condition for enum
local/lib/Model-->Found.php-->create it
                           -->creating the Model_Item_Found child class  from Model_Item parent class
                           -->inhariting
                           -->instantiating
                           -->adding condition for enum
local/lib/Model/View-->ItemList.php-->adding a ItemList View as CompleteLister
                                   -->adding list/items as defaultTemplate
                                   -->adding formatRow function
                                   -->generating link custom address for items.html

local/page/lost-->report.php-->showing the value of all fields as grid(expression)
                            -->for showing single expression  as grid
local/page/items-->list.php-->create it
                           -->creating the page_items_list child class  from Page parent class
                           -->inhariting
                           -->instantiating
                           -->adding tabs and setting model to it
                           -->adding custom View_ItemList and setiing Model  to it 

local/templates/default/list-->items.html-->create it 
                                    -->making custom list of lost or found item by smLite by use of CompleteLister
                                    -->adding title and description as lister
                                    -->adding a link showing id in it
end of part2 of podcast4
----------------------------------------------------------



================================================================================================================
podcast5-->CSS Framework, jQuery UI Themeroller, HTML Template in Agile Toolkit Tutorial
================================================================================================================

1.adding a new logo-->local/templates/default/images/logo.png
2.creating a local/templates/default/shared.html-->by copying it from atk4/templates/shared/shared.html
3.adding jQueryUi-lightness(images+jQuery-ui.css) in local/templates/default/css folder
4.copy atk-main.less and atk-main.css from local/atk4/templates/shared/css/ to local/templates/default/css/
5.local/templates/defaults/css/atk-main.less-->comentig the block below /* Custom jQueryUI States  */ 