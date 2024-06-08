require 'droplet_kit'

client = DropletKit::Client.new(access_token: 'API_token') # Api token (I did custom api, droplets[read, update])
droplet_id = 'DROPLET_ID' # Your droplet id

action_type = ARGV[0]

if action_type == 'on'
  client.droplet_actions.power_on(droplet_id: droplet_id)
  puts "Droplet #{droplet_id} is powering on."
elsif action_type == 'off'
  client.droplet_actions.power_off(droplet_id: droplet_id)
  puts "Droplet #{droplet_id} is powering off."
elsif action_type == 'reboot'  
  client.droplet_actions.reboot(droplet_id: droplet_id)
  puts "Droplet #{droplet_id} is rebooting."
else
  puts "Invalid action. Use 'start' or 'stop'."
end
