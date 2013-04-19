execute "install cloud_controller_ng gems" do
  cwd "/cf-deploy/cc_ng"
  command "bundle install"
  action :run
end

execute "run db:migrate" do
  cwd "/cf-deploy/cc_ng"
  command "bundle exec rake db:migrate"
  action :run
end
