include_recipe "mysql"

template "/etc/mysql/conf.d/override.cnf" do
  source "override.cnf.erb"
  mode 644
    notifies :restart, "service[mysql]"
end