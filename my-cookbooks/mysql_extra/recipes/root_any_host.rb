bash "mysql-root-grant-all" do
  user "root"
  code <<-EOH
  mysql -uroot -e "CREATE 'root'@'%' IDENTIFIED BY 'root';"
  mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';"
  mysql -uroot -e "flush privileges;"
  EOH
  action :run
end