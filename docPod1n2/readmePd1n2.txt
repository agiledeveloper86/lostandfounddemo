podcast1n2
====================================================
step1
----------------------------------------------------------------
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
                          -->adding fields to the Table.
                          -->use of type.
               -->User.php-->create it.
                          -->creating Model_User child from Model_Table parent.
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
