
# define :ey_cloud_report do
#   execute "reporting for #{params[:name]}" do
#     command "ey-enzyme --report '#{params[:message]}'"
#     epic_fail true
#   end
# end
# 
# ey_cloud_report "iptables" do
#   message "configuring iptables"
# end

if ['app_master', 'solo'].include?(node[:instance_role])
  template '/etc/conf.d/iptables' do
    source 'iptables.erb'
    mode '0644'
    owner 'root'
    group 'root'
    variables({:foo => 'bar'})
  end
end

