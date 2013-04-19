require 'rake'

desc "Init git submodules and clone required repos"
task :bootstrap => [:clone_required_repos, :init_git_submodules] do

end

desc "Init git submodules"
task :init_git_submodules do
  print "==> Submodules that need to be initialized: "

  count = `git submodule status --recursive | grep ^- | wc -l`.to_i
   `git submodule update --init --recursive` if count > 0
end

desc "Clone required repos"
task :clone_required_repos do
  print "==> Chequing repos to be cloned: "

  if File.directory? './uaa'
    puts "Nothing to clone"
  else
    puts "uaa needs to be cloned"
    `git clone https://github.com/cloudfoundry/uaa.git`
  end
end
