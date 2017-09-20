#!/usr/bin/ruby

# build docker image
puts "---- building Docker Image"
system("docker build -q --rm -t ansible-docker-hostimage .")
common_args="ansible_ssh_port=22 ansible_ssh_user='root' ansible_ssh_private_key_file='./insecure_key'"

File.delete("inventory") if File.exist?("inventory")

puts "---- Starting Docker Containers"
# create docker image
["0","1","2"].each do |i|
  inventoryname = "ansible-docker-host#{i}"
  # stop and rerun containers
  system("docker rm -f #{inventoryname}")
  system("docker run -d -p :80 -p :8080 --name #{inventoryname} ansible-docker-hostimage")

  # get ip address stripped of new lines
  inventoryip = `docker inspect -f {{.NetworkSettings.IPAddress}} #{inventoryname}`.strip
  inventoryline = "#{inventoryname} ansible_ssh_host=#{inventoryip} #{common_args}"
  IO.write('inventory',"#{inventoryline}\n", mode: 'a')
end

# assign hosts to groups and generate inventory file
IO.write('inventory', "\n", mode: 'a')
IO.write('inventory', "[group0]\n\n", mode: 'a')
IO.write('inventory', "ansible-docker-host0\n", mode: 'a')
IO.write('inventory', "ansible-docker-host1\n", mode: 'a')
IO.write('inventory', "[group1]\n\n", mode: 'a')
IO.write('inventory', "ansible-docker-host2\n", mode: 'a')
