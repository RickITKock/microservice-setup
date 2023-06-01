# Microservice Setup

> **Note**
>
> This project is the root of the microservice project. It serves as the starting point for development and testing.

## prerequisites

1. Install Docker.

Using Docker, you can quickly deploy and scale applications into any environment and know your code will run.

2. Within Docker, enable Kubernetes in the settings menu.

Kubernetes is a tool for running a bunch of different containers. We give it some configuration to describe how to run and interact with eachother.
we need to create images and deploy them in our Kubernetes cluster.

3. Install Ingress-Nginx Controller.

Ingress-nginx is an open-source Kubernetes Ingress controller that provides load balancing, SSL termination, and name-based virtual hosting for Kubernetes services. Ingress-nginx works by routing incoming traffic to the appropriate service based on the requested URL and other parameters. It can also perform other advanced functions.

Installation guide can be be found here. To get it done quickly, you could run the following command:

```bash
# Install the Ingress-Nginx Controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.8.0/deploy/static/provider/cloud/deploy.yaml
```

### Note about port 80

You might have other applications running on port 80. If identified, shut it down. To determine what might be using this port, in your terminal run:

```bash
# Windows
netstat -anb
```

```bash
# macOS
sudo lsof -i tcp:80
```

Docker should be running on this port.

4. Tweak Hosts file.

Find the hosts file located in your etc directory, and add the following:

```
127.0.0.1 posts.com
```

5. Install Skaffold.

Go to the following link and following the instructions to install Skaffold: https://skaffold.dev/docs/install/.

## Setup

This repository contains code so you can start developing a microservice.
To do so, clone this repository and apply the right permissions to the bash script like so:

```bash
# Set permissions
chmod 744 setup.sh
```

```bash
# Run the setup script
./setup.sh
```

## Update

To update all repositories, run the following commands:

```bash
# Set permissions
chmod 744 update.sh
```

```bash
# Run the update script
./update.sh
```

## Runnung the application

If you've installed everything and cloned/updated all repositories, run the following command to run the project:

```bash
# Run the update script
skaffold dev
```
