execute "install java uaa packages" do
  cwd "/uaa"
  command "mvn clean install"
  action :run
end
