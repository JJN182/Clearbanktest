# **Indie IT Ltd's Infrastructure as Code Repository**

Welcome to Indie IT Ltd's Infrastructure-as-Code repository! This repository contains the necessary Terraform and Helm configurations to set up Azure Service Bus Namespaces and deploy an NGINX container in an Azure Kubernetes Services environment.

## **Table of Contents**

- [**Indie IT Ltd's Infrastructure as Code Repository**](#indie-it-ltds-infrastructure-as-code-repository)
  - [**Table of Contents**](#table-of-contents)
  - [**Quick Start**](#quick-start)
  - [**Modules**](#modules)
  - [**Requirements**](#requirements)
  - [**Variables**](#variables)
  - [**Azure Kubernetes Services Deployment**](#azure-kubernetes-services-deployment)
  - [**Support**](#support)
  - [**Contributing**](#contributing)
  - [**Observability platform**](#observability-platform)

## **Quick Start**

1. Clone the repository:
   ```
   git clone https://github.com/IndieITLtd/infrastructure-repo.git
   ```
2. Change directory:
   ```
   cd infrastructure-repo
   ```
3. Initialize Terraform:
   ```
   terraform init
   ```

## **Modules**

- **Resource Group**: Module to create Azure Resource Groups.
- **Service Bus Namespace**: Module to create Azure Service Bus Namespaces, which also creates relevant queues.
- **Kubernetes NGINX Deployment**: A Helm chart to deploy an NGINX container serving a static webpage in the AKS environment.

## **Requirements**

- Terraform >= 1.1.0
- Azure Provider >= 3.0
- Helm v3.x
- Kubernetes CLI (kubectl)

## **Variables**

Variables for each module are described within their respective folders. However, for a quick reference, please review the `variables.tf` in each module directory.

## **Azure Kubernetes Services Deployment**

This repository also includes a Helm chart for deploying an NGINX container within AKS.

1. Setup Helm and install Tiller:
   ```
   helm init
   ```

2. Deploy the Helm chart:
   ```
   helm install ./path_to_chart
   ```

## **Support**

If you encounter any issues or need further assistance, please file an issue in the GitHub repository.

## **Contributing**

We welcome contributions! Please fork the repository and raise a Pull Request for any changes. Ensure you've tested your updates in a development environment.

---

Thank you for using Indie IT Ltd's Infrastructure-as-Code repository! We aim to keep this README updated with the latest instructions and configurations.

---

## **Observability platform**


There is also a simple Observability platform (ClearBankTechTest\Observability platform\Observability platform.svg), not related to the above code to fulfil a fictional task.

---

