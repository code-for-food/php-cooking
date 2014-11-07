# grant permission for webroot
directory node["myapp"]["root_path"] do
  owner "root"
  group "root"
  mode "0755"
  action :create
  recursive true
end

# reading the data bag
#secrets = Chef::EncryptedDataBagItem.load("secrets", "myapp")

if node.chef_environment == "dev"
    # enable kizang-api site.
    web_app 'myapp' do
    template 'site.conf.erb'
    docroot node['myapp']['root_path']
    server_name node['myapp']['server_name']
end
else

end
