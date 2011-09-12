default[:backup][:backup_user] = 'deploy'

default[:backup][:name] = "server_backup"
default[:backup][:description] = "a chef generated server backup"


default[:backup][:database][:username] = 'admin_user'
default[:backup][:database][:password] = 'admin_password'
default[:backup][:database][:databases] = ['test_database', 'test_db2']


default[:backup][:s3][:aws_access_key] = 'access_key'
default[:backup][:s3][:aws_secret_key] = 'secret_key'
default[:backup][:s3][:bucket_region] = 'us-west1'

# Create this beforehand
default[:backup][:s3][:bucket_name] = 'bucket_name'
default[:backup][:s3][:keep] = '10'

default[:backup][:s3][:sync_path] = "/files"

# List directories which you want to sync.
default[:backup][:s3][:sync_directories] = ["/tmp"]

default[:backup][:mail][:on_success] = true
default[:backup][:mail][:on_failure] = true
default[:backup][:mail][:from_address] = "backup@test.com"
default[:backup][:mail][:to_address] = "youremail@test.com"
default[:backup][:mail][:domain] = "domain.com"