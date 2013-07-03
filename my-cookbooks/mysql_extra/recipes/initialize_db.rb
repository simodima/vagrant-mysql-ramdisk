include_recipe "mysql"

data_path = "#{node['mysql']['datadir']}"


bash "mysql-install-db" do
  user "root"
  code <<-EOH
  mysql_install_db
  chown -R mysql:mysql #{data_path}
  chmod -R 775 #{data_path}
  EOH
  action :run
  notifies :restart, "service[mysql]", :immediately
end