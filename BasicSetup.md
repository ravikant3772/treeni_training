# Basic Setup

The basic setup for developement in Treeni Sustainability Solutions we have to folllow the steps:
  - Clone the Repository from github
  - Create a gemset for the project
  - Install a gem bundler
  - Run the bundle install
  - Install Mongodb
  - Install Redis
  - Install MySQL and Postgres SQL
  - Run the rails server


### Clone The Repository

To understand the current projects of Treeni we have to clone the projects from the github:
- Visit to github repository of treeni https://github.com/Treeni/treeni-data-management
- clone this repository on your local repository/machine
    
### Create gemset
- create a gemset for the current project (now your current project is treeni-data-management )
- to create a gemset follow the https://rvm.io/gemsets

### Install the gem Bundler
When you create a new gemset currently there is no gem installed for that gemset which are require for the project.  To install the gems from gemfile, first install the 'bundler'

```sh
$ sudo apt-get install bundler
```

### Bundle Install

After installing the 'bundler', now our gemset is ready to install all gems which are required in gemfile of the project.

```sh
$ bundle install
```
this command will install the gems for the current gemset 
#### Install MongoDb
To install the MongoDb follow the steps from the link:

https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/


### Install Redis
Redis is an open source key-value data store. To install the Redis follow the 'step 1 - Install Redis' from the below link 

https://www.digitalocean.com/community/tutorials/how-to-configure-a-redis-cluster-on-ubuntu-14-04

#### Install MySQL and Postgres SQL
Install Mysql:
```sh
$ sudo apt-get install mysql-server
```
```sh
$ sudo apt-get install libmysqlclient-dev
```
Install Postgres SQL:

https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-14-04

```sh
$ sudo apt-get install libpq-dev
```



#### Run Rails Server
Now the project is ready to run on server. To run rails server
```sh
$ rails server
```


[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)


   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [@thomasfuchs]: <http://twitter.com/thomasfuchs>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [keymaster.js]: <https://github.com/madrobby/keymaster>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>

   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]:  <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
