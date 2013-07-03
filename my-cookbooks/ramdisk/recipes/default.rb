data_path = "#{node['mysql']['datadir']}"

bash "ramdisk_mount" do
  user "root"
  code <<-EOH
  mount -t tmpfs -o size=128M tmpfs #{data_path}
  chown mysql #{data_path}
  chgrp mysql #{data_path}
  chmod 775 #{data_path}
  EOH
  action :run
end