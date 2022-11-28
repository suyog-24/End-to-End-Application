#End To End Application.


Terraform - 

Terraform HashiCorp Terraform is a tool for building, changing, and versioning infrastructure that has an open-source and enterprise version. Terraform is cloud agnostic and can be used to create multi-cloud infrastructure. It allows IaC in a human readable language called HashiCorp Configuration Language (HCL).

Prerequisite -

Install Terraform
Install Visual Studio Code
Install AWS CLI
Sign Up for an AWS Account

Basic knowledge of AWS & Terraform
AWS account
AWS Access & Secret Key

In this project, I have used some variables also that I will discuss later in this article.

Modules are created in the Application folder.
.
├── main.tf
├── modules
│   ├── elb
│   │   ├── elb.tf
│   │   └── variable.tf
│   ├── rds
│   │   ├── rds.tf
│   │   └── variable.tf
│   ├── securitygroup
│   │   ├── output.tf
│   │   ├── sg.tf
│   │   └── variable.tf
│   ├── subnet
│   │   ├── output.tf
│   │   ├── subnet.tf
│   │   └── variable.tf
│   └── vpc
│       ├── output.tf
│       ├── variable.tf
│       └── vpc.tf
├── provider.tf
├── terraform.tfstate
├── terraform.tfstate.backup
└── variable.tf

Documentation - 
https://github.com/suyog-24/End-to-End-Application.git

