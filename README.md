# behat-for-qateam
# Here we could be able to add our behat achievements

For setup the invironment:
* create folder where you can put you project
* add into this folder composer.json file (which placed on this repo)
* install composer into this directory (without <code>sudo</code>, because it could broke composer path):
* <code>**curl -sS https://getcomposer.org/installer | php**</code>
* <code>**php composer.phar install**</code>
* change rights for the project folder:
* <code>**sudo chmod 777 - R {youDirectoryNameWithoutQuotes}/**</code>
* create feature folder with this command:
* <code>**behat --init**</code>
* replace file FeatureContext.php in bootstrap directory with current one (which placed on this repo)
* add current feature file in the features/ folder (which placed on this repo)
* add current behat.yml file in the root folder (which placed on this repo)
* download Selenium Standalone Server http://www.seleniumhq.org/download/ and move it into the project folder
* run server from the folder where you placed it with this command:
* <code>**java - jar selenium-server-standalone-2.xx.x.jar</code>** (instead of **xx.x** you should put actual numbers from current version of server)
- run tests with this command:
> <code>**bin/behat**</code>
