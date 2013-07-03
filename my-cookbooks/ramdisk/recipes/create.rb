include_recipe "apparmor"

data_path = "#{node['mysql']['datadir']}"

bash "ramdisk" do
  user "root"
  code <<-EOH
  mkdir -p #{data_path}
  chown mysql #{data_path}
  chgrp mysql #{data_path}
  chmod 775 #{data_path}
  EOH
  action :run
end