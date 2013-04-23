DEPLOY_PATH   = "/cf-deploy"
GOROUTER_PATH = "#{DEPLOY_PATH}/gorouter"

git GOROUTER_PATH do
  repository "git://github.com/cloudfoundry/gorouter.git"
  revision "7982fea352486c493fe1cb0d8514cd6c93a43e5a"

  action :sync
end

execute "gorouter submodules update" do
  cwd GOROUTER_PATH
  command "git submodule update --init"
  action :run
end

execute "install gorouter" do
  cwd GOROUTER_PATH
  command "./bin/go install router/router"
  action :run
end
