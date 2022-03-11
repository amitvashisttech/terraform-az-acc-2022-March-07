resource "aws_instance" "frontend" {
  #ami                    = data.aws_ami.myami.id
  ami                    = var.ami_id
  instance_type          = lookup(var.instance_type, terraform.workspace)
  #count                  = lookup(var.instance_count, terraform.workspace)
  vpc_security_group_ids = [var.sg_id]
  key_name               = var.key_name
  tags = {
    Name = local.default_name
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file(var.pvt_key)
    host        = self.public_ip

  }


  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install python sshpass -y",
    ]

  }

}

resource "null_resource" "ansible-main" {
  provisioner "local-exec" {
    command = <<EOT
      > ansible-ci.ini;
      echo "[ansible-ci]"|tee -a ansible-ci.ini;
      export ANSIBLE_HOST_KEY_CHECKING=False;
      echo "${aws_instance.frontend.public_ip}"|tee -a ansible-ci.ini;
      ansible-playbook --key-file=${var.pvt_key} -i ansible-ci.ini -u ubuntu ./ansible-code/webserver.yaml -v 
   EOT
  }

  depends_on = [aws_instance.frontend]
}
