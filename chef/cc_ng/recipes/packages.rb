packages = %w(
  libmysqlclient-dev
  postgresql-server-dev-all
  libsqlite3-dev
)

packages.each do |package_name|
  package package_name do
    action :install
  end
end
