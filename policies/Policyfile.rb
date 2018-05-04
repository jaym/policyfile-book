# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name "included"

# This lets you source cookbooks from your chef-repo.
default_source :chef_repo, "../"

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list "example::default", "motd"

# Specify a custom source for a single cookbook:
# cookbook "example_cookbook", path: "../cookbooks/example_cookbook"
default_source :chef_repo, "/home/jaym/workspace/sandbox/policyfile/policyfile-book/cookbooks" do |s|
  s.preferred_for "example"
end


