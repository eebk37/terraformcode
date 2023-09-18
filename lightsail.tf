resource "aws_lightsail_instance" "my_first_server" {
  name              = "my-lightsail-instance"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform</h1>' | sudo tee /var/www/html/index.html"
}

# resource "aws_lightsail_instance" "my_first-server" {
#   name = "my-lightsail-instance"

#   availability_zone = "us-east-1a"
#   blueprint_id = "amazon_linux_2"
#   bundle_id = "nano_1_0"

#   user_data = << -EOF
#   sudo yum install -y httpd
#   sudo systemctl start httpd
#   sudo systemctl enable httpd
#   sudo echo "<h1>This Server is created using Terraform </h1>" >> /var/www/html/index.html
# EOF
# }
