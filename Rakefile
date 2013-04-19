require 'rake'

desc "Init git submodules and clone required repos"
task :bootstrap => [:init_git_submodules, :clone_required_repos] do

end

desc "Init git submodules"
task :init_git_submodules do
  print "==> Submodules that need to be initialized: "

  count = exec("git submodule status --recursive | grep ^- | wc -l").to_i
  exec "git submodule update --init --recursive" if count > 0
end

desc "Clone required repos"
task :clone_required_repos do
  print "==> Chequing repos to be cloned: "

  if File.directory? './uaa'
    puts "Nothing to clone"
  else
    puts "uaa need to be cloned"
    exec "git clone https://github.com/cloudfoundry/uaa.git"
  end
end
