```
1045  terraform apply --auto-approve
 1046  ssh -i ~/.ssh/amitvashist-terraform.pem ubuntu@18.188.134.118
 1047  terraform show
 1048  ssh -i ~/.ssh/amitvashist-terraform.pem ubuntu@3.133.124.218
 1049  ls
 1050  cd ..
 1051  ls
 1052  mkdir 01-Inventory
 1053  cd remote-exec/
 1054  ls
 1055  terraform show output
 1056  terraform output
 1057  terraform output  >> ../01-Inventory/inventory
 1058  cd ../
 1059  ls
 1060  cd 01-Inventory/
 1061  ls
 1062  vim inventory
 1063  ls
 1064  ansible all -i inventory -u ubuntu -m ping --key=/home/amitvashist7/.ssh/amitvashist-terraform.pem
 1065  vim inventory
 1066  ansible all -i inventory -u ubuntu -m ping --key=/home/amitvashist7/.ssh/amitvashist-terraform.pem
 1067  vim inventory
 1068  ansible all -i inventory -u ubuntu -m ping --key=/home/amitvashist7/.ssh/amitvashist-terraform.pem
 1069  ls
 1070  df -h
 1071  ansible-doc -
 1072  ansible-doc -l
 1073  ansible-doc ping
 1074  ansible-doc command
 1075  df -h
 1076  ansible all -i inventory -u ubuntu -m command -a 'df -h' --key=/home/amitvashist7/.ssh/amitvashist-terraform.pem
 1077  cat /etc/os-release
 1085  ansible all -i inventory -u ubuntu -m command -a 'cat /etc/os-release' --key=/home/amitvashist7/.ssh/amitvashist-terraform.pem -b
 1086  cat /etc/os-release
 1087  cat /etc/*-release
 1088  ansible all -i inventory -u ubuntu -m command -a 'cat /etc/*-release' --key=/home/amitvashist7/.ssh/amitvashist-terraform.pem -b
 1089  cat /etc/*-release
 1090  ansible all -i inventory -u ubuntu -m shell -a 'cat /etc/*-release' --key=/home/amitvashist7/.ssh/amitvashist-terraform.pem -b

