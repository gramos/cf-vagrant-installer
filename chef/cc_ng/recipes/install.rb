execute "install cloud_controller_ng gems" do
  cwd "/cc_ng"
  command "bundle install"
  action :run
end
