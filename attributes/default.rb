default[:backup][:backup_user] = 'deploy'

default[:backup][:name] = "server_backup"
default[:backup][:description] = "a chef generated server backup"


default[:backup][:database][:name]
default[:backup][:database][:user]
default[:backup][:database][:password]


default[:backup][:s3][:aws_access_key]
default[:backup][:s3][:aws_secret_key]
default[:backup][:s3][:bucket_region]
default[:backup][:s3][:bucket_name]
default[:backup][:s3][:keep]

default[:backup][:database][:databases]

default[:backup][:s3][:sync_path] 

default[:backup][:s3][:sync_directories]

default[:backup][:mail][:on_success]
default[:backup][:mail][:on_failure]
default[:backup][:mail][:from_address]
default[:backup][:mail][:to_address]
default[:backup][:mail][:domain]