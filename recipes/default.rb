#
# Cookbook Name:: backup
# Recipe:: default
#
# Copyright 2011, Alastair Brunton
#
# MIT license
#

# Install backup, s3sync, fog, mail, whenever

package "libxslt" do
  package_name "libxslt-dev"
  action :install
end

package "libxml-dev" do
  package_name "libxml2-dev"
  action :install
end


['backup', 's3sync', 'fog', 'mail', 'whenever', 'popen4'].each do |gem_name|
  gem_package gem_name do
    action :install
  end
end

execute "cd /home/#{node[:backup][:backup_user]} && backup generate" do
  user node[:backup][:backup_user]
end

template "/home/#{node[:backup][:backup_user]}/Backup/config.rb" do
  owner node[:backup][:backup_user]
  source "config.rb.erb"
  variables(:config => node[:backup])
end




