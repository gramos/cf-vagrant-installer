execute "install java uaa packages" do
  cwd "/cf-deploy/uaa"
  command "mvn clean install"
  action :run
end
