provider "aws" {
    region = "eu-north-1"  
}
resource "aws_instance" "web" {
  ami                     = "ami-04e4606740c9c9381"
  instance_type           = "t3.micro"
  #disable_api_termination = false
  #disable_api_stop        = false
  user_data               = <<-EOF
          #!/bin/bash
          yum update -y
          yum install httpd -y
          systemctl start httpd
          systemctl enable httpd
          yum install git -y
          git clone https://github.com/goodluck2717/goodluck.git
          mv /goodluck/* /var/www/html/
          EOF


  tags = {
    Name = "HelloWorld"
  }
}
