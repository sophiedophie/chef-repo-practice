# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'company_web'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'mychef_client::default','company_web::default', 'myusers::default'

# Specify a custom source for a single cookbook:
cookbook 'company_web', path: 'cookbooks/company_web'
cookbook 'myiis', path: 'cookbooks/myiis'
cookbook 'apache', path: 'cookbooks/apache'
cookbook 'mychef_client', path: 'cookbooks/mychef_client'
cookbook 'myusers', path: 'cookbooks/myusers'
