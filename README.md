<div align="center">

# 🚀 Terraform Enterprise Infrastructure on AWS

### Remote Backend • State Locking • GitHub Actions • OIDC Authentication • Terraform Drift • Terraform Import

![Terraform](https://img.shields.io/badge/Terraform-v1.15-blueviolet?logo=terraform)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws)
![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-blue?logo=githubactions)
![Infrastructure as Code](https://img.shields.io/badge/IaC-Terraform-success)
![License](https://img.shields.io/badge/License-MIT-green)

</div>

---

# 📖 Project Overview

This project demonstrates how **Terraform is used in enterprise environments** to provision and manage AWS infrastructure using Infrastructure as Code (IaC).

The project follows modern DevOps and GitOps best practices including:

- ✅ Modular Terraform Design
- ✅ Remote Backend using Amazon S3
- ✅ Terraform State Locking using DynamoDB
- ✅ GitHub Actions CI Pipeline
- ✅ GitHub OIDC Authentication (No AWS Keys)
- ✅ Terraform Drift Detection
- ✅ Terraform Import
- ✅ Enterprise Git Workflow
- ✅ Pull Request Validation
- ✅ Production Ready Project Structure

---

# 🏗 Solution Architecture

> Replace the image below after creating it in Draw.io

<p align="center">
<img src="docs/architecture-overview.png" width="100%">
</p>

---

# 🏛 Architecture Overview

```
Developer
      │
Git Push / Pull Request
      │
      ▼
GitHub Repository
      │
      ▼
GitHub Actions CI
      │
      ├──────── Checkout
      ├──────── Setup Terraform
      ├──────── AWS OIDC Authentication
      ├──────── Terraform fmt
      ├──────── Terraform Validate
      ├──────── Terraform Init
      ├──────── Terraform Plan
      ├──────── Upload tfplan Artifact
      └──────── Future Security Scans
                    │
                    ▼
                AWS Cloud
      ┌────────────────────────────┐
      │ EC2                       │
      │ Security Group            │
      └────────────────────────────┘
                    │
                    ▼
        S3 Remote Backend
                    │
                    ▼
         DynamoDB State Lock
```

---

# 📂 Repository Structure

```
terraform-drift/

├── .github/
│   └── workflows/
│       └── terraform-pr.yml
│
├── bootstrap/
│
├── infrastructure/
│
├── modules/
│   ├── ec2/
│   └── security-group/
│
├── docs/
│   ├── architecture-overview.png
│   ├── github-actions-pipeline.png
│   └── terraform-backend.png
│
├── README.md
└── .gitignore
```

---

# ⚙ Terraform Backend Architecture

<p align="center">
<img src="docs/terraform-backend.png" width="80%">
</p>

## Remote Backend

Terraform state is stored remotely inside Amazon S3.

### Benefits

- Centralized State
- Team Collaboration
- Versioning
- Disaster Recovery

---

## State Locking

Terraform uses DynamoDB to prevent multiple users from modifying infrastructure simultaneously.

### Benefits

- Prevent Concurrent Apply
- Prevent State Corruption
- Safe Team Collaboration

---

# 🚀 GitHub Actions CI Pipeline

<p align="center">
<img src="docs/github-actions-pipeline.png" width="90%">
</p>

## Current Pipeline

```
Checkout Repository

↓

Setup Terraform

↓

Authenticate to AWS (OIDC)

↓

Terraform fmt

↓

Terraform Validate

↓

Terraform Init

↓

Terraform Plan

↓

Upload tfplan Artifact
```

---

## Upcoming Pipeline

```
Checkout

↓

Terraform fmt

↓

Terraform Validate

↓

Terraform Plan

↓

Upload Artifact

↓

TFLint

↓

tfsec

↓

Checkov

↓

Trivy

↓

Gitleaks

↓

Manual Approval

↓

Terraform Apply
```

---

# 🔐 GitHub OIDC Authentication

Instead of storing long-lived AWS Access Keys inside GitHub Secrets, this project uses **GitHub OpenID Connect (OIDC)**.

Authentication Flow

```
GitHub Actions

↓

OIDC Token

↓

AWS IAM Role

↓

Temporary AWS Credentials

↓

Terraform
```

### Benefits

- No AWS Access Keys
- Temporary Credentials
- AWS Recommended
- Enterprise Security

---

# ☁ AWS Resources

Current Infrastructure

| Resource | Status |
|----------|--------|
| EC2 | ✅ |
| Security Group | ✅ |
| S3 Backend | ✅ |
| DynamoDB Lock Table | ✅ |

Future Infrastructure

- VPC
- ALB
- Route53
- ACM
- Auto Scaling
- RDS
- EKS

---

# 📦 Terraform Modules

```
modules/

├── ec2/
│
├── security-group/
│
└── Future Modules
    ├── vpc/
    ├── alb/
    ├── iam/
    ├── rds/
    └── eks/
```

---

# 🌿 Git Workflow

```
main

│

develop

│

feature/*
```

Development Flow

```
Feature Branch

↓

Git Push

↓

Pull Request

↓

GitHub Actions

↓

Code Review

↓

Merge

↓

Deployment
```

---

# 🔄 Terraform Drift Detection

Scenario

```
Terraform Code

t3.micro

↓

AWS Console

Changed to

t2.micro

↓

terraform plan

↓

Drift Detected

↓

terraform apply

↓

Infrastructure Restored
```

---

# 📥 Terraform Import

Scenario

```
AWS Resource

Created Manually

↓

Terraform Configuration

↓

terraform import

↓

Terraform State Updated

↓

terraform plan

↓

No Changes
```

---

# 🛠 Disaster Recovery

| Scenario | Recovery |
|----------|----------|
| Local State Deleted | terraform init |
| Remote State Deleted | Restore S3 Version |
| Terraform State Lost | terraform import |
| EC2 Deleted | terraform apply |
| Drift | terraform plan + apply |

---

# 📋 CI/CD Features

Current

- Terraform fmt
- Terraform Validate
- Terraform Init
- Terraform Plan
- OIDC Authentication
- Plan Artifact Upload

Upcoming

- TFLint
- tfsec
- Checkov
- Trivy
- Gitleaks
- Manual Approval
- Terraform Apply
- Drift Detection Workflow
- Slack Notifications

---

# 🧰 Technology Stack

| Category | Technology |
|----------|------------|
| IaC | Terraform |
| Cloud | AWS |
| Compute | EC2 |
| Backend | Amazon S3 |
| Locking | DynamoDB |
| CI/CD | GitHub Actions |
| Authentication | GitHub OIDC |
| Version Control | Git |
| Operating System | Linux (WSL) |

---

# 🎯 Learning Outcomes

✔ Modular Terraform Design

✔ Remote Backend

✔ State Locking

✔ Terraform Import

✔ Terraform Drift

✔ GitHub Actions

✔ AWS OIDC

✔ Enterprise Git Workflow

✔ Infrastructure as Code

✔ CI/CD Best Practices

---

# 🚧 Roadmap

- [x] Remote Backend
- [x] State Locking
- [x] EC2 Module
- [x] Security Group Module
- [x] GitHub Actions
- [x] AWS OIDC Authentication
- [x] Terraform Plan Artifact
- [ ] TFLint
- [ ] tfsec
- [ ] Checkov
- [ ] Trivy
- [ ] Gitleaks
- [ ] Manual Approval
- [ ] Terraform Apply
- [ ] Multi-Environment Deployment (Dev/Stage/Prod)

---

# 👨‍💻 Author

**Souvik De**

Cloud & DevOps Engineer

GitHub: https://github.com/souvikde319

LinkedIn: https://www.linkedin.com/in/souvik-de-567942126/ 

---

<div align="center">

⭐ If you found this project useful, consider giving it a star!

</div>
