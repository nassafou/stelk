ELK: install  Metricbeat

- Install metricbeat
  sudo apt update -y && sudo apt upgrade -y
  sudo apt-get install apt-transport-https
  wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
  sudo apt-get update && sudo apt-get install metricbeat
  sudo systemctl start metricbeat
- Config metricbeat -> /etc/metricbeat/metricbeat.yml
   output.elasticsearch:
  hosts: ["localhost:9200"]
  username: "" #(si pas de login/mot de passe ne rien mettre)
  password: "" #(si pas de login/mot de passe ne rien mettre)

...

setup.kibana:
  host: "localhost:5601"

...

# Optional
metricbeat.config.modules:
  path: ${path.config}/modules.d/*.yml
  reload.enabled: true
  reload.period: 15s
- Metricbeat module

  /etc/metricbeat/modules.d/system.yml

  sudo metricbeat modules enable system
  sudo metricbeat setup
  
  
