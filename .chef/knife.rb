current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT

organization_base_name = "papi"
require 'grit'
repository = Grit::Repo.new(Dir.pwd)
current_branch = Grit::Head.current(repository).name
organization = organization_base_name
organization << "-#{current_branch}" unless current_branch == 'master'



node_name                "levmichael1979"
client_key               "#{current_dir}/levmichael1979.pem"
validation_client_name   "papi-validator"
validation_key           "#{current_dir}/papi-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/papi"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

#Personal added info
cookbook_copyright "Papi Company"
cookbook_license "apachev2"
cookbook_email "levmichael3@gmail.com"
