require 'droplet_kit'

client = DropletKit::Client.new(access_token: 'API_token')
droplet_id = 'DROPLET_ID'

action_type = ARGV[0]

case action_type
when 'on'
  client.droplet_actions.power_on(droplet_id: droplet_id)
  puts "Droplet #{droplet_id} is powering on."
when 'off'
  client.droplet_actions.power_off(droplet_id: droplet_id)
  puts "Droplet #{droplet_id} is powering off."
when 'snap'
  client.droplet_actions.snapshot(droplet_id: droplet_id, name: "#{ARGV[1]}")
  puts "Droplet #{droplet_id} is making snapshot."
when 'help'
  puts 'on - power on your droplet             --> `ruby filename.rb on`'
  puts 'off - power off your droplet           --> `ruby filename.rb off`'
  puts 'snap - make snapshot of your droplet.  --> `ruby filename.rb snap snapshotName`'
else
  puts "Invalid action. Use 'off' or 'on'."
end
