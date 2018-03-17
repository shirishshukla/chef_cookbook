#
# Cookbook:: webserver-1
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
# package
package 'httpd' do
    action :install
end

# service
service 'httpd' do
    action [:enable, :start]
end

# file
file '/var/www/html/index.html' do
    content 'hello from Shirish Shukla !!'
end

#template '/var/www/html/index.html' do
#    source 'index.html.erb'
#end
