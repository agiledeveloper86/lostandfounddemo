==================================================
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
end of step1......
------------------------------------------------------------------------


