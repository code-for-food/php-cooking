#
# Cookbook Name:: myapp
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "apache2"
include_recipe "mysql::client"
include_recipe "mysql::server"

include_recipe "php55"


include_recipe "php::module_mysql"
include_recipe "php::module_curl"
include_recipe "php::module_memcache"
include_recipe "apache2::mod_php5"
include_recipe "apache2::mod_expires"

include_recipe "php-mcrypt"

# disble default site.
apache_site "default" do
  enable false
end
