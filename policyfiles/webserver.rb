# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'webserver'

# Where to find external cookbooks:
default_source :supermarket

# Specify a custom source for a cookbook:
cookbook 'apache', github: 'seankbeard/cookbooks', branch: 'master', rel: 'apache'
cookbook 'audit_agr', git: 'https://github.com/anthonygrees/audit_agr.git'

# # run_list: chef-client will run these recipes in the order specified.
run_list ['apache::default',
          'audit_agr',
          'os-hardening']