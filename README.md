# Kubernetes Demo Project

This project demonstrates the deployment of a Kubernetes cluster on an AWS Ubuntu VM and the deployment of the Podinfo demo application using Helm.

## Table of Contents

- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Setup Instructions](#setup-instructions)
- [Deploying Kubernetes](#deploying-kubernetes)
- [Deploying Podinfo](#deploying-podinfo)
- [Accessing the Demo Application](#accessing-the-demo-application)

## Project Structure

The project is organized as follows:

```plaintext
kubernetes-demo/
|-- scripts/
|   |-- setup_k8.sh
|   |-- application_deploy.sh
|-- helm/
|   |-- podinfo/
|       |-- Chart.yaml
|       |-- values.yaml
|-- README.md
|-- .gitignore

Prerequisites
Before starting, make sure you have the following prerequisites:

An AWS Ubuntu VM.
AWS credentials configured on the VM.
kubectl installed on your local machine.
helm installed on your local machine.
Setup Instructions
Clone the Repository:

1)git clone <repository-url>
cd kubernetes-demo
Update AWS Ubuntu VM:

SSH into your AWS Ubuntu VM and navigate to the project directory.

2)Configure AWS Credentials:

Set up your AWS credentials on the VM.

export AWS_ACCESS_KEY_ID=your-access-key
export AWS_SECRET_ACCESS_KEY=your-secret-key
Deploying Kubernetes
Run Kubernetes Installation Script:

3)Run the script to install Kubernetes on the AWS Ubuntu VM.

./scripts/setup_k8.sh
Copy Kubeconfig to Local Machine:
Copy the kubeconfig file from the VM to your local machine.


4)scp ubuntu@your-aws-vm-ip:/etc/kubernetes/admin.conf ~/.kube/config
Deploying Podinfo
Run Podinfo Deployment Script:

5)--Deploy the Podinfo Helm chart on the Kubernetes cluster.

./scripts/app_deploy.sh
Accessing the Demo Application
Update Local Machine Hosts File:

Update your local machine's /etc/hosts file to include the AWS VM IP.

your-aws-vm-ip demo.code-intelligence.local
Deploy Ingress Resource:

Deploy an Ingress resource to route traffic to the Podinfo service.
Copy code
kubectl apply -f https://demo.code-intelligence.local/ingress.yaml
Access the Demo Application:

Open a web browser and navigate to https://demo.code-intelligence.local.

You should now see the Podinfo demo application



Explanation of the Project Structure:
scripts/: Contains scripts for installing Kubernetes on the AWS Ubuntu VM and deploying the demo application.

helm/podinfo/: Helm chart directory for the Podinfo demo application.

Chart.yaml: Metadata for the Helm chart.

values.yaml: Default configuration values for the Helm chart.

README.md: Documentation explaining the project, how to use the scripts, and any other important information.