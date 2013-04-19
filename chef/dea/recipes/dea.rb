execute "install dea gems" do
  cwd "/cf-deploy/dea"
  command "bundle install"
  action :run
end
