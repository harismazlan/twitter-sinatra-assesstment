# Load centralized environment configurations
require ::File.expand_path('../config/environments/init', __FILE__)

set :run, true
set :session_secret, "hawk"
enable :sessions

run Sinatra::Application
