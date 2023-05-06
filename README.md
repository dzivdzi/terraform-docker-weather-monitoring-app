App which takes weather data from kennedy space center and utilizes NodeRed, influxDB and grafana to present it deployed with terraform.

As the app makes backups of the volumes with sudo, you need to run terraform apply with your own PW - terraform apply -var="your_pw=passwd"
