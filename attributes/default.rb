default[:backup][:backup_user] = 'deploy'
default[:backup][:config][:name] = "server_backup"
default[:backup][:config][:description] = "a chef generated server backup"

default[:backup][:config][:s3][:enabled] = true
default[:backup][:config][:s3sync][:enabled] = true

# need to add more default config here.