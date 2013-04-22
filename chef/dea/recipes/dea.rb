execute "install dea gems" do
  cwd "/cf-deploy/dea_ng"
  command "bundle install"
  action :run
end
