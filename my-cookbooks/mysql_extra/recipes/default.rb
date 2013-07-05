include_recipe "mysql"

template "/etc/mysql/conf.d/override.cnf" do
  source "override.cnf.erb"
  mode 644
  not_if {File.exists?("/etc/mysql/conf.d/override.cnf")}
  notifies :restart, "service[mysql]"
end