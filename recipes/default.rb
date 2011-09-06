#
# Cookbook Name:: backup
# Recipe:: default
#
# Copyright 2011, Alastair Brunton
#
# MIT license
#

# install backup, s3sync, fog, mail, whenever

['backup', 's3sync', 'fog', 'mail', 'whenever'].each do |gem_name|
  gem_package gem_name do
    action :install
  end
end

execute "cd ~/;backup --setup" do
  user node[:backup][:backup_user]
end




