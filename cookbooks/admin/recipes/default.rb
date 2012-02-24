
# /data/iptables_poc/current/admin

remote_file '/etc/monit.d/todo_admin.monitrc' do
  source 'todo_admin.monitrc'
  mode '0644'
  owner 'root'
  group 'root'
end

execute "bounce monit" do
  command "kill -HUP `cat /var/run/monit.pid`"
  user 'root'
  group 'root'
end