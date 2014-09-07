# Install node, npm, newrelic-sysmond-policy

if node[:newrelic_sysmond_policy][:installprereqs]
  include_recipe "newrelic"
  include_recipe "nodejs::default"
  nodejs_npm 'newrelic-sysmond-policy'
end

# init.d template
template "/etc/init.d/newrelic-sysmond-policy" do
  source "init_d.erb"
  mode 0755
end

log "NewRelic API key not defined.  Not enabling the service!" do
  level :error
  not_if {node[:newrelic][:apikey]}
end

service "newrelic-sysmond-policy" do
   supports :start => true, :stop => true, :restart => false
   action [:enable, :start]
   only_if {node[:newrelic][:apikey]}
end
