packages = %w(
  maven

)

# TODO: Add sun-java6-jdk
# The problem is that we need to answer ok to
# license agreement

packages.each do |package_name|
  package package_name do
    action :install
  end
end
