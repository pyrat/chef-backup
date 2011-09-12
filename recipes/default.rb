#
# Cookbook Name:: backup
# Recipe:: default
#
# Copyright 2011, Alastair Brunton
#
# MIT license
#

# Install backup, s3sync, fog, mail, whenever

['backup', 's3sync', 'fog', 'mail', 'whenever'].each do |gem_name|
  gem_package gem_name do
    action :install
  end
end

execute "cd /home/#{node[:backup][:backup_user]};backup --setup" do
  user node[:backup][:backup_user]
end

template "/home/#{node[:backup][:backup_user]}/Backup/config.rb" do
  owner node[:backup][:backup_user]
  source "config.rb.erb"
  variables(:config => node[:backup])
end




