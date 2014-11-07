PHP-Cooking
====

#### Installation

This project would use chef-solo for install some PHP stuff

* PHP 5
* MySql 5.5
* Apache2

Also this mounting the web application to Apache root directory

#### Usage

1. Installing `ruby`

        https://www.ruby-lang.org/en/installation/

2. Installing `librarian-chef`

        gem install librarian-chef

3. Installing cookbooks with `librarian-chef`

        librarian-chef install

4. Use Vagrant for development environment

        vagrant up

5. Checking the site on browser

        http://192.168.34.100
