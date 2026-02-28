# 🏗️ Terraform AWS S3 Static Website Hosting

![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)
![DevOps](https://img.shields.io/badge/DevOps-Intermediate-blue?style=for-the-badge)

### 📌 PROJECT OVERVIEW
This repository contains the **Infrastructure as Code (IaC)** required to automatically provision and configure an AWS S3 bucket for static website hosting. Instead of manually configuring cloud resources via the AWS Management Console, this project uses **Terraform** to declare the infrastructure setup, ensuring consistency, repeatability, and version control.

This represents Level 2 of my DevOps engineering journey, moving from manual click-ops to automated infrastructure provisioning.

---

### 🚀 FEATURES
* **Automated S3 Bucket Creation:** Provisions a unique S3 bucket (`tabish-terraform-portfolio-2026-v3`) in the `eu-north-1` region.
* **Security & Access Management:** Automatically disables the "Block Public Access" settings and attaches a custom Bucket Policy for public read access.
* **Static Web Hosting:** Configures the bucket to serve web assets and sets `index.html` as the default document.
* **Asset Deployment:** Uploads the local `index.html` file directly to the cloud environment during the deployment phase.
* **Dynamic Output:** Automatically outputs the live website URL upon successful deployment.

---

### 🛠️ PREREQUISITES
Before deploying this infrastructure, ensure you have the following installed and configured:
1. **Terraform CLI** (v1.0.0 or later)
2. **AWS CLI** configured with valid IAM Access Keys (`aws configure`)
3. An active **AWS Account**

---

### 💻 HOW TO DEPLOY

**1. Clone the repository**
```bash
git clone [https://github.com/YOUR-USERNAME/Terraform-S3-Static-Hosting.git](https://github.com/YOUR-USERNAME/Terraform-S3-Static-Hosting.git)
cd Terraform-S3-Static-Hosting
2. Initialize Terraform
Downloads the required AWS provider plugins.

Bash
terraform init
3. Preview the Infrastructure
See exactly what resources Terraform will create before making any changes.

Bash
terraform plan
4. Deploy the Infrastructure
Build the infrastructure and upload the website. Type yes when prompted.

Bash
terraform apply
5. Clean Up (Optional)
To avoid unwanted AWS charges, tear down the infrastructure when you are done testing.

Bash
terraform destroy
