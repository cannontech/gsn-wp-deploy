############################################
# Setup Server
############################################

set :stage, :production
set :stage_url, "http://admin.prodwp.gsn2.com"
server "54.183.217.7", user: "ubuntu", roles: %w{web app db}
set :deploy_to, "/usr/share/nginx/html"

############################################
# Setup Git
############################################

set :branch, "master"

############################################
# Extra Settings
############################################

#specify extra ssh options:

#set :ssh_options, {
#    auth_methods: %w(password),
#    password: 'password',
#    user: 'username',
#}

#specify a specific temp dir if user is jailed to home
#set :tmp_dir, "/path/to/custom/tmp"
