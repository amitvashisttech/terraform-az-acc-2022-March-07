```
  469  mkdir 10-Variables
  470  cp -rf 09-Providers/Azure/exp1 10-Variables/
  471  ls
  472  cd 10-Variables/
  473  ls
  474  cd exp1/
  475  ls
  476  cat provider.tf 
  477  cat terraform.tf 
  478  ls
  479  cat resource.tf 
  480  vim resource.tf 
  481  ls
  482  vim variable.tf 
  483  terraform init 
  484  terraform plan 
  485  ls
  486  cat variable.tf 
  487  TF_VAR_my_rg_name=foo terraform plan 
  492  terraform plan -help
  493  terraform plan -var my_rg_name=fooRG -var my_loc=westus
  494  ls
  495  cp -rf variable.tf uat.tfvars
  496  vim uat.tfvars 
  497  ls
  498  cp -rf uat.tfvars prod.tfvars
  499  vim prod.tfvars 
  500  ls
  501  terraform plan 
  502  terraform plan -var my_rg_name=fooRG -var my_loc=westus
  503  terraform plan -var-file=uat.tfvars 
  504  terraform plan -var-file=prod.tfvars 
  505  ls
  506  cd ..
  507  ls
  508  mkdir exp2
  509  ls
  510  cp -rf exp1/provider.tf exp2/
  511  cp -rf exp1/terraform.tf exp2/
  512  ls
  513  cd exp2/
  514  ls
  515  vim resource.tf 
  516  ls
  517  vim variables.tf 
  518  ls
  519  cat provider.tf 
  520  cat terraform.tf 
  521  ls
  522  vim resource.tf 
  523  ls
  524  cat variables.tf 
  525  cat resource.tf 
  526  terraform init 
  527  terraform plan 
  528  ls
  529  vim prod.tfvars
  530  ls
  531  terraform plan -var-file=prod.tfvars 
  532  cat prod.tfvars 
  533  ls
  534  cat resource.tf 
  535  cat variables.tf 
  536  cat prod.tfvars 
  537  vim resource.tf 
  538  ls
  539  vim variables.tf 
  540  ls
  541  vim prod.tfvars 
  542  ls
  543  mv prod.tfvars /root/
  544  ls
  545  mv prod.tfvars ~/
  546  ls
  547  terraform plan -var-file=~/prod.tfvars 
  548  cd 
  549  ls
  550  pwd
  551  cd - 
  552  terraform plan -var-file=/home/amit/prod.tfvars 
  553  ls
  554  mv /home/amit/prod.tfvars . 
```
