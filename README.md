<div align="center">

# ☁️ Cloud-Native DevOps Deployment Platform

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=22&duration=3000&pause=1000&color=00FF00&center=true&vCenter=true&width=500&lines=DevOps+Automation;Infrastructure+as+Code;CI%2FCD+Pipeline;Cloud+Native+Architecture" />

<br/>

![AWS](https://img.shields.io/badge/Cloud-AWS-orange?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Terraform](https://img.shields.io/badge/IaC-Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Docker](https://img.shields.io/badge/Container-Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/CI%2FCD-GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)
![Nginx](https://img.shields.io/badge/Reverse_Proxy-Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white)

</div>

---

## 🚀 Project Overview

This project demonstrates a **production-style cloud-native deployment pipeline** built using modern DevOps principles.

It automates:

- Infrastructure provisioning (Infrastructure as Code)
- Containerized application deployment
- CI/CD pipeline execution
- Reverse proxy configuration
- Secure remote deployment to AWS

The goal is to simulate a **real-world enterprise deployment workflow**.

---

## 🏗️ Architecture Flow

```mermaid
graph TD
    Developer((fa:fa-code Developer))
    GitHub["fa:fa-github GitHub Repository"]
    
    subgraph GH_Actions [GitHub Actions CI/CD]
        Build["fa:fa-hammer Build Docker Image"]
        DockerPush["fa:fa-docker Push to DockerHub"]
    end

    DockerHub["fa:fa-box DockerHub Registry"]

    subgraph AWS_Cloud [AWS EC2 Infrastructure]
        Terraform["fa:fa-cloud Terraform Provisioning"]
        
        subgraph Instance [EC2 Instance]
            Nginx["fa:fa-server Nginx Reverse Proxy"]
            DockerRun["fa:fa-container Docker Runtime"]
        end
    end

    LiveApp((fa:fa-globe Live Production App))

    Developer -- "git push" --> GitHub
    GitHub --> Build
    Build --> DockerPush
    DockerPush -. "kanvit279/devops-app" .-> DockerHub
    DockerHub -- "docker pull" --> DockerRun
    Terraform -- "IaC" --> AWS_Cloud
    Nginx -- "Proxy (80 -> 3000)" --> DockerRun
    LiveApp --- Nginx
```
## ⚡ Technology Ecosystem


<div align="center">

| ☁️ **Cloud Layer** | 🏗️ **Infrastructure** | 🐳 **Container** |
|:---:|:---:|:---:|
| <img src="https://img.icons8.com/color/48/000000/amazon-web-services.png" width="40"/><br/>**AWS EC2**<br/><sub>Elastic Compute Cloud</sub> | <img src="https://img.icons8.com/color/48/000000/terraform.png" width="40"/><br/>**Terraform**<br/><sub>Infrastructure as Code</sub> | <img src="https://img.icons8.com/color/48/000000/docker.png" width="40"/><br/>**Docker**<br/><sub>Container Runtime</sub> |
| <img src="https://img.icons8.com/color/48/000000/security-checked.png" width="40"/><br/>**Security Groups**<br/><sub>Network Firewall</sub> | <img src="https://img.icons8.com/color/48/000000/source-code.png" width="40"/><br/>**HCL**<br/><sub>Hashicorp Config</sub> | <img src="https://img.icons8.com/color/48/000000/docker-compose.png" width="40"/><br/>**Compose**<br/><sub>Multi-Container</sub> |
| <img src="https://img.icons8.com/color/48/000000/iam.png" width="40"/><br/>**IAM**<br/><sub>Identity & Access</sub> | <img src="https://img.icons8.com/color/48/000000/state-machine.png" width="40"/><br/>**State Mgmt**<br/><sub>Remote Backend</sub> | <img src="https://img.icons8.com/color/48/000000/container.png" width="40"/><br/>**Registry**<br/><sub>Image Repository</sub> |

| 🔄 **CI/CD** | 🌐 **Reverse Proxy** | 💻 **Backend** | 🖥 **OS** |
|:---:|:---:|:---:|:---:|
| <img src="https://img.icons8.com/color/48/000000/github-actions.png" width="40"/><br/>**GitHub Actions**<br/><sub>Automation Engine</sub> | <img src="https://img.icons8.com/color/48/000000/nginx.png" width="40"/><br/>**Nginx**<br/><sub>Load Balancer</sub> | <img src="https://img.icons8.com/color/48/000000/nodejs.png" width="40"/><br/>**Node.js**<br/><sub>JavaScript Runtime</sub> | <img src="https://img.icons8.com/color/48/000000/ubuntu.png" width="40"/><br/>**Ubuntu**<br/><sub>Linux OS</sub> |
| <img src="https://img.icons8.com/color/48/000000/workflow.png" width="40"/><br/>**Auto Deploy**<br/><sub>Continuous Delivery</sub> | <img src="https://img.icons8.com/color/48/000000/network.png" width="40"/><br/>**Reverse Proxy**<br/><sub>Request Routing</sub> | <img src="https://img.icons8.com/color/48/000000/express-js.png" width="40"/><br/>**Express**<br/><sub>Web Framework</sub> | <img src="https://img.icons8.com/color/48/000000/console.png" width="40"/><br/>**Bash/Zsh**<br/><sub>Shell Environment</sub> |
| <img src="https://img.icons8.com/color/48/000000/test-passed.png" width="40"/><br/>**Testing**<br/><sub>Quality Gates</sub> | <img src="https://img.icons8.com/color/48/000000/ssl-certificate.png" width="40"/><br/>**SSL/TLS**<br/><sub>Secure Transport</sub> | <img src="https://img.icons8.com/color/48/000000/npm.png" width="40"/><br/>**NPM**<br/><sub>Package Manager</sub> | <img src="https://img.icons8.com/color/48/000000/system-task.png" width="40"/><br/>**Systemd**<br/><sub>Service Manager</sub> |

</div>

<br>

<!-- Tech Stack Metrics -->
<div align="center">
  <table>
    <tr>
      <td align="center" style="border: 2px solid #00ff00; border-radius: 10px; padding: 15px; background: linear-gradient(145deg, #0a0a0a, #1a1a1a);">
        <b>☁️ 3 Cloud Services</b>
      </td>
      <td align="center" style="border: 2px solid #00ff00; border-radius: 10px; padding: 15px;">
        <b>🏗️ 3 IaC Components</b>
      </td>
      <td align="center" style="border: 2px solid #00ff00; border-radius: 10px; padding: 15px;">
        <b>🐳 3 Container Tools</b>
      </td>
      <td align="center" style="border: 2px solid #00ff00; border-radius: 10px; padding: 15px;">
        <b>🔄 3 CI/CD Stages</b>
      </td>
    </tr>
  </table>
</div>

<br>

---

<br>

## 📦 Project Architecture

<div align="center">
  <h3>
    <img src="https://media.giphy.com/media/26tn33aiTi1jkl6H6/giphy.gif" width="25">
    Modular Directory Structure
    <img src="https://media.giphy.com/media/26tn33aiTi1jkl6H6/giphy.gif" width="25">
  </h3>
  <p><i>Clean separation of concerns for maintainable infrastructure</i></p>
</div>

<br>

<!-- Futuristic Folder Structure -->
<details open>
<summary><b>🚀 Click to explore the architecture</b></summary>

<br>

```bash
📦 cloud-native-devops-platform
├── 📂 .github                          # GitHub Configuration Hub
│   └── 📂 workflows
│       └── 📜 deploy.yml                # ⚡ CI/CD Automation Engine
│                                          └── Triggers: push, PR to main
│
├── 📂 app                               # 🎯 Application Core
│   ├── 📜 index.js                       # 🧠 Node.js Core Logic
│   │                                       ├── Express server
│   │                                       ├── Health endpoints
│   │                                       └── API routes
│   ├── 📜 package.json                    # 📦 Dependency Manifest
│   │                                       ├── Scripts
│   │                                       ├── Dependencies
│   │                                       └── Metadata
│   └── 📜 Dockerfile                       # 🐳 Container Blueprint
│                                              ├── Multi-stage build
│                                              ├── Production optimization
│                                              └── Security hardening
│
├── 📂 terraform                          # 🏗️ Infrastructure as Code
│   ├── 📜 main.tf                          # 🏛️ Infrastructure Definition
│   │                                          ├── EC2 instances
│   │                                          ├── Security groups
│   │                                          └── IAM roles
│   ├── 📜 variables.tf                      # ⚙️ Environment Variables
│   │                                          ├── Instance types
│   │                                          ├── Region config
│   │                                          └── Key pairs
│   └── 📜 outputs.tf                        # 📍 Resource Mapping
│                                              ├── Public IPs
│                                              ├── DNS names
│                                              └── Instance IDs
│
├── 📂 nginx                              # 🌐 Reverse Proxy Layer
│   └── 📜 default.conf                     # 🔀 Proxy Rules
│                                              ├── Load balancing
│                                              ├── SSL termination
│                                              └── Request routing
│
└── 📜 README.md                          # 📚 Project Documentation
                                              ├── Setup guide
                                              ├── Deployment steps
                                              └── API reference

```
<br>
 <h2>
    <img src="https://media.giphy.com/media/3o7abB06u9bNzA8LC8/giphy.gif" width="30">
    🔄 End-to-End DevOps Workflow
    <img src="https://media.giphy.com/media/3o7abB06u9bNzA8LC8/giphy.gif" width="30">
  </h2>
  <p><i>Automated pipeline from development to production</i></p>


<br>

<!-- Animated Workflow Diagram -->
<div align="center">
  <pre style="background: linear-gradient(90deg, #1a1a1a, #2a2a2a); padding: 25px; border-radius: 20px; border: 1px solid #00ff00; font-family: 'Fira Code', monospace; color: #00ff00; box-shadow: 0 0 30px rgba(0,255,0,0.2);">
    ┌──────────────┐     ┌──────────────┐     ┌──────────────┐     ┌──────────────┐
    │   💻 DEV     │────▶│   🔄 GITHUB  │────▶│   🐳 DOCKER  │────▶│   ☁️ AWS     │
    │   PUSH       │     │   ACTIONS    │     │   BUILD      │     │   EC2        │
    └──────────────┘     └──────────────┘     └──────────────┘     └──────┬───────┘
           ▲                       ▲                      ▲                      │
           └───────────────────────┴──────────────────────┴──────────────────────┘
                                    🚀 CONTINUOUS DEPLOYMENT PIPELINE
  </pre>
</div>

<br>

<!-- Interactive Timeline -->
<div align="center">
  <h3>⏱️ Deployment Timeline</h3>
  
  <table width="100%" style="border-collapse: collapse;">
    <tr>
      <td align="center" style="border-bottom: 3px solid #00ff00; padding: 15px;">
        <div style="background: #00ff00; color: black; width: 40px; height: 40px; border-radius: 50%; line-height: 40px; margin: 0 auto; font-weight: bold;">1</div>
        <b>Code Push</b><br>
        <span style="color: #888;">0s</span>
      </td>
      <td align="center" style="border-bottom: 3px solid #00ff00; padding: 15px;">
        <div style="background: #00ff00; color: black; width: 40px; height: 40px; border-radius: 50%; line-height: 40px; margin: 0 auto; font-weight: bold;">2</div>
        <b>CI/CD Trigger</b><br>
        <span style="color: #888;">5s</span>
      </td>
      <td align="center" style="border-bottom: 3px solid #00ff00; padding: 15px;">
        <div style="background: #00ff00; color: black; width: 40px; height: 40px; border-radius: 50%; line-height: 40px; margin: 0 auto; font-weight: bold;">3</div>
        <b>Docker Build</b><br>
        <span style="color: #888;">30s</span>
      </td>
      <td align="center" style="border-bottom: 3px solid #00ff00; padding: 15px;">
        <div style="background: #00ff00; color: black; width: 40px; height: 40px; border-radius: 50%; line-height: 40px; margin: 0 auto; font-weight: bold;">4</div>
        <b>Push to Hub</b><br>
        <span style="color: #888;">45s</span>
      </td>
      <td align="center" style="border-bottom: 3px solid #00ff00; padding: 15px;">
        <div style="background: #00ff00; color: black; width: 40px; height: 40px; border-radius: 50%; line-height: 40px; margin: 0 auto; font-weight: bold;">5</div>
        <b>EC2 Deploy</b><br>
        <span style="color: #888;">60s</span>
      </td>
    </tr>
  </table>
</div>

<br>

<!-- Detailed Workflow Steps -->
<div align="center">
  <h3>📋 Step-by-Step Execution</h3>
</div>

<table align="center" width="100%">
  <tr>
    <td width="50%" valign="top">
      <div style="border-left: 4px solid #00ff00; padding-left: 20px; margin: 20px 0;">
        <h4>🎯 Phase 1: Trigger</h4>
        <ol style="list-style-type: none; padding-left: 0;">
          <li style="margin: 15px 0;">
            <span style="background: #00ff00; color: black; padding: 3px 10px; border-radius: 15px;">01</span>
            <b>Developer pushes code</b> to <code>main</code> branch
          </li>
          <li style="margin: 15px 0;">
            <span style="background: #00ff00; color: black; padding: 3px 10px; border-radius: 15px;">02</span>
            <b>GitHub Actions detects</b> the push event
          </li>
        </ol>
      </div>
    </td>
    <td width="50%" valign="top">
      <div style="border-left: 4px solid #00ff00; padding-left: 20px; margin: 20px 0;">
        <h4>🔄 Phase 2: Build</h4>
        <ol style="list-style-type: none; padding-left: 0;">
          <li style="margin: 15px 0;">
            <span style="background: #00ff00; color: black; padding: 3px 10px; border-radius: 15px;">03</span>
            <b>Docker image built</b> from <code>/app</code> directory
          </li>
          <li style="margin: 15px 0;">
            <span style="background: #00ff00; color: black; padding: 3px 10px; border-radius: 15px;">04</span>
            <b>Image pushed</b> to DockerHub registry
          </li>
        </ol>
      </div>
    </td>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <div style="border-left: 4px solid #00ff00; padding-left: 20px; margin: 20px 0;">
        <h4>🚀 Phase 3: Deploy</h4>
        <ol style="list-style-type: none; padding-left: 0;">
          <li style="margin: 15px 0;">
            <span style="background: #00ff00; color: black; padding: 3px 10px; border-radius: 15px;">05</span>
            <b>GitHub connects via SSH</b> to AWS EC2 instance
          </li>
          <li style="margin: 15px 0;">
            <span style="background: #00ff00; color: black; padding: 3px 10px; border-radius: 15px;">06</span>
            <b>EC2 pulls latest</b> Docker image
          </li>
        </ol>
      </div>
    </td>
    <td width="50%" valign="top">
      <div style="border-left: 4px solid #00ff00; padding-left: 20px; margin: 20px 0;">
        <h4>✅ Phase 4: Live</h4>
        <ol style="list-style-type: none; padding-left: 0;">
          <li style="margin: 15px 0;">
            <span style="background: #00ff00; color: black; padding: 3px 10px; border-radius: 15px;">07</span>
            <b>Old container stopped</b> and removed
          </li>
          <li style="margin: 15px 0;">
            <span style="background: #00ff00; color: black; padding: 3px 10px; border-radius: 15px;">08</span>
            <b>New container starts</b> with updated code
          </li>
          <li style="margin: 15px 0;">
            <span style="background: #00ff00; color: black; padding: 3px 10px; border-radius: 15px;">09</span>
            <b>Nginx routes traffic</b> port 80 → 3000
          </li>
        </ol>
      </div>
    </td>
  </tr>
</table>

<!-- Success Message -->
<div align="center" style="background: linear-gradient(90deg, #1a1a1a, #0a0a0a); padding: 15px; border-radius: 30px; border: 1px solid #00ff00; margin: 20px 0;">
  <span style="color: #00ff00; font-size: 18px;">✨ Application Live → Zero Downtime Deployment Achieved ✨</span>
</div>

<br>

---

<br>
 <h2>
    <img src="https://media.giphy.com/media/WFZvB7VIXBgiz3oDXE/giphy.gif" width="30">
    ⚡ CI/CD Pipeline Architecture
    <img src="https://media.giphy.com/media/WFZvB7VIXBgiz3oDXE/giphy.gif" width="30">
  </h2>
  <p><i>Automated GitHub Actions workflow for continuous delivery</i></p>

<!-- Pipeline Visualization -->
<div align="center">
  <table width="100%" style="background: linear-gradient(145deg, #1a1a1a, #2a2a2a); border-radius: 20px; padding: 20px;">
    <tr>
      <td align="center" colspan="7">
        <h3>🔄 GitHub Actions Pipeline</h3>
      </td>
    </tr>
    <tr>
      <td align="center" style="padding: 15px;">
        <div style="background: #00ff00; width: 50px; height: 50px; border-radius: 50%; line-height: 50px; color: black; font-weight: bold; margin: 0 auto;">✓</div>
        <b>Checkout</b>
      </td>
      <td align="center">→</td>
      <td align="center" style="padding: 15px;">
        <div style="background: #00ff00; width: 50px; height: 50px; border-radius: 50%; line-height: 50px; color: black; font-weight: bold; margin: 0 auto;">🔑</div>
        <b>Docker Login</b>
      </td>
      <td align="center">→</td>
      <td align="center" style="padding: 15px;">
        <div style="background: #00ff00; width: 50px; height: 50px; border-radius: 50%; line-height: 50px; color: black; font-weight: bold; margin: 0 auto;">🏗️</div>
        <b>Build Image</b>
      </td>
      <td align="center">→</td>
      <td align="center" style="padding: 15px;">
        <div style="background: #00ff00; width: 50px; height: 50px; border-radius: 50%; line-height: 50px; color: black; font-weight: bold; margin: 0 auto;">📤</div>
        <b>Push Image</b>
      </td>
    </tr>
    <tr>
      <td colspan="7" align="center" style="padding: 10px;">↓</td>
    </tr>
    <tr>
      <td colspan="7" align="center" style="padding: 15px;">
        <div style="display: inline-block; background: #00ff00; width: 50px; height: 50px; border-radius: 50%; line-height: 50px; color: black; font-weight: bold;">🔌</div>
        <b style="margin: 0 20px;">SSH Connect to EC2</b>
        <div style="display: inline-block; background: #00ff00; width: 50px; height: 50px; border-radius: 50%; line-height: 50px; color: black; font-weight: bold;">⬇️</div>
        <b style="margin: 0 20px;">Pull Image</b>
        <div style="display: inline-block; background: #00ff00; width: 50px; height: 50px; border-radius: 50%; line-height: 50px; color: black; font-weight: bold;">🛑</div>
        <b style="margin: 0 20px;">Stop Old</b>
        <div style="display: inline-block; background: #00ff00; width: 50px; height: 50px; border-radius: 50%; line-height: 50px; color: black; font-weight: bold;">🚀</div>
        <b style="margin: 0 20px;">Deploy New</b>
      </td>
    </tr>
  </table>
</div>

<br>

<!-- CI/CD Benefits Cards -->
<div align="center">
  <h3>🎯 Why CI/CD?</h3>
  
  <table width="100%">
    <tr>
      <td width="33%" align="center" style="border: 1px solid #00ff00; border-radius: 15px; padding: 20px; background: #0a0a0a;">
        <h4>🚫 No Manual Work</h4>
        <p>Eliminates human intervention in deployment process</p>
        <span style="background: #00ff00; color: black; padding: 3px 10px; border-radius: 12px;">100% Automated</span>
      </td>
      <td width="33%" align="center" style="border: 1px solid #00ff00; border-radius: 15px; padding: 20px; background: #0a0a0a;">
        <h4>⚠️ Zero Errors</h4>
        <p>Reduces human mistakes in production</p>
        <span style="background: #00ff00; color: black; padding: 3px 10px; border-radius: 12px;">99.9% Reliable</span>
      </td>
      <td width="33%" align="center" style="border: 1px solid #00ff00; border-radius: 15px; padding: 20px; background: #0a0a0a;">
        <h4>⚡ Faster Releases</h4>
        <p>Deploy multiple times per day</p>
        <span style="background: #00ff00; color: black; padding: 3px 10px; border-radius: 12px;">2-min cycle</span>
      </td>
    </tr>
  </table>
</div>

<br>

---

<br>


  <h2>
    <img src="https://media.giphy.com/media/Ll22OhMLAlVDb8UQWe/giphy.gif" width="30">
    🏗️ Infrastructure as Code (Terraform)
    <img src="https://media.giphy.com/media/Ll22OhMLAlVDb8UQWe/giphy.gif" width="30">
  </h2>
  <p><i>Version-controlled infrastructure provisioning</i></p>


<!-- Terraform Architecture -->
<div align="center">
  <table style="background: linear-gradient(135deg, #1a1a1a, #0a0a0a); border-radius: 20px; padding: 25px; width: 100%;">
    <tr>
      <td width="40%" align="center" style="border-right: 2px dashed #00ff00;">
        <h3>📦 Terraform Manages</h3>
        <ul style="list-style-type: none; padding-left: 0;">
          <li style="margin: 15px 0;">✅ <b>EC2 Instance</b> - t2.micro</li>
          <li style="margin: 15px 0;">✅ <b>Security Group</b> - Ports 22,80,3000</li>
          <li style="margin: 15px 0;">✅ <b>IAM Roles</b> - Permissions</li>
          <li style="margin: 15px 0;">✅ <b>Network Config</b> - VPC setup</li>
        </ul>
      </td>
      <td width="60%" align="center">
        <h3>🎯 Why Terraform?</h3>
        <div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 10px;">
          <div style="border: 1px solid #00ff00; border-radius: 10px; padding: 10px;">
            <b>📝 Version Control</b>
          </div>
          <div style="border: 1px solid #00ff00; border-radius: 10px; padding: 10px;">
            <b>🔄 Reproducible</b>
          </div>
          <div style="border: 1px solid #00ff00; border-radius: 10px; padding: 10px;">
            <b>🚫 No Manual Console</b>
          </div>
          <div style="border: 1px solid #00ff00; border-radius: 10px; padding: 10px;">
            <b>⚡ Auto Provision</b>
          </div>
          <div style="border: 1px solid #00ff00; border-radius: 10px; padding: 10px;" colspan="2">
            <b>📊 No Drift</b>
          </div>
        </div>
      </td>
    </tr>
  </table>
</div>

<br>

## 💻 Terraform CLI Commands

The following Terraform commands are used to manage the infrastructure lifecycle:

```bash
# Initialize the working directory
terraform init

# Preview infrastructure changes before applying
terraform plan

# Deploy infrastructure
terraform apply -auto-approve

# Destroy all managed infrastructure
terraform destroy
```
<br>

<!-- Resource Visualization -->
<h3>🏛️ Infrastructure Architecture</h3>

<div align="center">
  
  <pre style="background: #0a0a0a; padding: 20px; border-radius: 15px; border: 1px solid #00ff00;">
    ┌─────────────────────────────────────────────────────────────┐
    │                      AWS Cloud                              │
    │  ┌─────────────────────────────────────────────────────┐    │
    │  │  Security Group (Ports: 22, 80, 3000)               │    │
    │  │  ┌─────────────────────────────────────────────┐    │    │
    │  │  │  EC2 Instance (t2.micro)                    │    │    │
    │  │  │  ┌─────────────────────────────────────┐    │    │    │
    │  │  │  │  Docker Container                   │    │    │    │
    │  │  │  │  Node.js App on Port 3000           │    │    │    │
    │  │  │  └─────────────────────────────────────┘    │    │    │
    │  │  └─────────────────────────────────────────────┘    │    │
    │  └─────────────────────────────────────────────────────┘    │
    └─────────────────────────────────────────────────────────────┘
  </pre>
</div>

<!-- Terraform Workflow -->
<div align="center">
  <h3>🔄 Terraform Workflow</h3>
  
  <table width="100%">
    <tr>
      <td align="center" style="padding: 15px;">
        <div style="background: #00ff00; width: 40px; height: 40px; border-radius: 50%; line-height: 40px; color: black; margin: 0 auto;">1</div>
        <b>Write</b><br> <code>.tf files</code>
      </td>
      <td align="center">→</td>
      <td align="center" style="padding: 15px;">
        <div style="background: #00ff00; width: 40px; height: 40px; border-radius: 50%; line-height: 40px; color: black; margin: 0 auto;">2</div>
        <b>Plan</b><br> <code>terraform plan</code>
      </td>
      <td align="center">→</td>
      <td align="center" style="padding: 15px;">
        <div style="background: #00ff00; width: 40px; height: 40px; border-radius: 50%; line-height: 40px; color: black; margin: 0 auto;">3</div>
        <b>Apply</b><br> <code>terraform apply</code>
      </td>
      <td align="center">→</td>
      <td align="center" style="padding: 15px;">
        <div style="background: #00ff00; width: 40px; height: 40px; border-radius: 50%; line-height: 40px; color: black; margin: 0 auto;">4</div>
        <b>Manage</b><br> <code>version control</code>
      </td>
    </tr>
  </table>
</div>

<br>

<!-- Footer -->
<div align="center">
  <img src="https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png" width="100%">
  
  <p>
    <strong>✅ Fully Automated | 🔄 Zero Downtime | 🏗️ Infrastructure as Code | ⚡ CI/CD Enabled</strong>
  </p>
</div>

## 🚀 Deployment Workflow

<div style="border-left: 4px solid #00ff00; padding-left: 20px; margin: 30px 0;">
  <h3>📦 Step-by-Step Deployment Guide</h3>
</div>

<div align="center">
  <table width="100%">
    <tr>
      <td align="center" width="20%" style="background: #1a1a1a; border-radius: 10px; padding: 15px; border: 1px solid #00ff00;">
        <span style="background: #00ff00; color: black; width: 30px; height: 30px; border-radius: 50%; display: inline-block; line-height: 30px; font-weight: bold;">1</span>
        <h4>🏗️ Provision</h4>
        <p style="font-size: 12px;">Terraform</p>
      </td>
      <td align="center" width="5%">→</td>
      <td align="center" width="20%" style="background: #1a1a1a; border-radius: 10px; padding: 15px; border: 1px solid #00ff00;">
        <span style="background: #00ff00; color: black; width: 30px; height: 30px; border-radius: 50%; display: inline-block; line-height: 30px; font-weight: bold;">2</span>
        <h4>⚙️ Configure</h4>
        <p style="font-size: 12px;">EC2 Setup</p>
      </td>
      <td align="center" width="5%">→</td>
      <td align="center" width="20%" style="background: #1a1a1a; border-radius: 10px; padding: 15px; border: 1px solid #00ff00;">
        <span style="background: #00ff00; color: black; width: 30px; height: 30px; border-radius: 50%; display: inline-block; line-height: 30px; font-weight: bold;">3</span>
        <h4>📤 Push</h4>
        <p style="font-size: 12px;">Git Commit</p>
      </td>
      <td align="center" width="5%">→</td>
      <td align="center" width="20%" style="background: #1a1a1a; border-radius: 10px; padding: 15px; border: 1px solid #00ff00;">
        <span style="background: #00ff00; color: black; width: 30px; height: 30px; border-radius: 50%; display: inline-block; line-height: 30px; font-weight: bold;">4</span>
        <h4>🔄 Deploy</h4>
        <p style="font-size: 12px;">CI/CD</p>
      </td>
      <td align="center" width="5%">→</td>
      <td align="center" width="20%" style="background: #1a1a1a; border-radius: 10px; padding: 15px; border: 1px solid #00ff00;">
        <span style="background: #00ff00; color: black; width: 30px; height: 30px; border-radius: 50%; display: inline-block; line-height: 30px; font-weight: bold;">5</span>
        <h4>🌐 Access</h4>
        <p style="font-size: 12px;">Live App</p>
      </td>
    </tr>
  </table>
</div>

<br>

---

### Step 1.  Clone the Repository

```bash
git clone https://github.com/your-username/cloud-native-devops-platform.git
cd cloud-native-devops-platform
```

### Step 2. Setup AWS Credentials (Required for Terraform)
```bash
# Install AWS CLI and configure:
aws configure
```
> ℹ️ Provide: AWS Access Key, AWS Secret Key, Region (e.g., ap-south-1)

### Step-3  Provision Infrastructure
```bash
# Navigate to the terraform directory:
cd terraform
terraform init
terraform plan
terraform apply
```
> ℹ️ This creates the EC2 instance and required security groups with ports 22 (SSH), 80 (HTTP), and 3000 (Node.js) open.


<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/3d72a80e-48ed-4d98-9973-8c51b4a7c442" />


### Step-4 Configure EC2 (One-Time Setup)

```bash
# Connect to your EC2 instance
ssh -i your-key-pair.pem ubuntu@<public-ip>

```

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/0da3c89f-a2a8-4399-88e7-47f85a47e269" />


Then install Docker and Nginx:
```bash

# Update package lists
sudo apt update && sudo apt upgrade -y

# Install Docker
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER  # Add user to docker group

# Install Nginx
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

# Verify installations
docker --version
nginx -v
```
> ℹ️  EC2 instance is prepared with all necessary tools for containerization and reverse proxy.

### Step-5 Configure Nginx Reverse Proxy
Edit Nginx configuration:
```bash
sudo nano /etc/nginx/sites-available/default

```
Replace with:
```bash
server {
    listen 80;

    location / {
        proxy_pass http://localhost:3000;
    }
}

```
> Restart nginx. Nginx listen on port 80 and forward all incoming web traffic to your application running on port 3000 inside the server.


<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/c017ea55-8510-4241-b464-c06bad24a40f" />


### Step-6 Push Code to GitHub
```bash

# Add all changes
git add .

# Commit with a meaningful message
git commit -m "Deploy: Update application with new features"

# Push to main branch (triggers CI/CD)
git push origin main

```

### Step-7 CI/CD Handles Deployment
> Before proceeding further, ensure that all required credentials are added under:
> Repository Settings → Secrets and Variables → Actions.
<br>
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/9a92d80c-b1dd-4378-ab07-adee8b10c827" />

### Step-8 Workflows Status
>If it appears like this, it means everything is configured correctly.
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/97cd51d1-e1be-4575-a510-3c29d60732ec" />

> Website View
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/0d4655f7-d580-4f72-9d6f-e7491b0c4bf9" />
