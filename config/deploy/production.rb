############################################
# Setup Server
############################################

set :stage, :production
set :stage_url, "http://admin.prodwp.gsn2.com"
server "54.193.16.84", user: "deploy", roles: %w{web app db}
#set :deploy_to, "/usr/share/nginx/html"
set :deploy_to, "/mnt/sharefs/wordpress"

############################################
# Setup Git
############################################

set :branch, "master"

############################################
# Extra Settings
############################################

#specify extra ssh options:

set :ssh_options, {
	keys:["id_rsa"],
	#verbose: :debug,
	user: "deploy"
}

#specify a specific temp dir if user is jailed to home
#set :tmp_dir, "/path/to/custom/tmp"
