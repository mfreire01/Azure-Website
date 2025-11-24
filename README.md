# Azure Website Deployment

This repository automatically deploys an Azure App Service website using a fully automated GitHub Actions pipeline.

## Overview

The deployment flow uses:

### **1. Terraform**
Responsible for provisioning all Azure infrastructure, including:
- Resource Group  
- Storage Account  
- App Service Plan  
- App Service  
- Backend state resources

### **2. GitHub Actions**
Handles the CI/CD pipeline, including:
- Authentication with Azure
- Terraform:
  1. **Setup**
  2. **Init**
  3. **Plan**
  4. **Apply**
- Deployment of web content to Azure App Service

### **3. Azure App Service**
Hosts the PHP website that displays:
Hello $GREETING_NAME!
