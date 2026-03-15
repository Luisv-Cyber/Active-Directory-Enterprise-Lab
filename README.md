# Active Directory Enterprise IAM Lab
## Table of Contents

- [Project Overview](#project-overview)
- [Architecture](#architecture)
- [Technologies Used](#technologies-used)
- [Lab Environment](#lab-environment)
- [Setup Process](#setup-process)
- [Active Directory Configuration](#active-directory-configuration)
- [IAM Concepts Demonstrated](#iam-concepts-demonstrated)
- [Troubleshooting](#troubleshooting--issues-encountered)
- [Lessons Learned](#lessons-learned)
- [Skills Demonstrated](#skills-demonstrated)

## Project Overview

This project demonstrates the deployment and administration of a simulated **enterprise Active Directory environment** using **Hyper-V virtualization**.

The lab was built to practice and showcase **System Administration** and **Identity & Access Management (IAM)** skills commonly used in enterprise Windows environments.

The environment includes:

- Windows Server Domain Controller
- Windows 11 domain-joined workstation
- Organizational Unit (OU) hierarchy
- Automated user provisioning with PowerShell
- Security group creation
- Role-Based Access Control (RBAC)
- File server with departmental shares
- NTFS and Share permission configuration
- Group Policy configuration
- Password policy enforcement
- Account lockout protection
- Infrastructure troubleshooting

---

## Architecture

### Virtual Infrastructure

```text
+-----------------------+
|       Hyper-V Host    |
+-----------------------+
          |
          | Lab-Switch (Internal Network)
          |
  -------------------------------
  |                             |
+---------+               +-----------+
|  DC01   |               | Client01  |
| Domain  |               | Windows11 |
|Controller|              | Workstation|
+---------+               +-----------+
```

## Skills Demonstrated

---

## Screenshots

### Hyper-V Virtual Machines

Both the Domain Controller and workstation were deployed in a Hyper-V virtual lab environment.

![Hyper-V VMs Running](https://github.com/Luisv-Cyber/Active-Directory-Enterprise-Lab/blob/main/screenshots/Screenshot%202026-03-15%20115836.png?raw=true)

### Active Directory OU Structure

Organizational Units were created to simulate enterprise identity organization.

![OU Structure](https://github.com/Luisv-Cyber/Active-Directory-Enterprise-Lab/blob/main/screenshots/Screenshot%202026-03-15%20122836.png?raw=true)

### Security Groups

Security groups were used to implement Role-Based Access Control (RBAC).

![Security Groups](https://github.com/Luisv-Cyber/Active-Directory-Enterprise-Lab/blob/main/screenshots/Screenshot%202026-03-15%20123151.png?raw=true)
![Powershell Script](https://github.com/Luisv-Cyber/Active-Directory-Enterprise-Lab/blob/main/screenshots/Screenshot%202026-03-14%20193615.png?raw=true)
### Provisioned Users

User accounts were automatically created and placed into the correct Organizational Units using PowerShell automation.

![Users Created](https://github.com/Luisv-Cyber/Active-Directory-Enterprise-Lab/blob/main/screenshots/Screenshot%202026-03-15%20123638.png?raw=true)

### File Share Permissions

Departmental file shares were configured with NTFS permissions assigned to security groups.

![File Share Permissions](screenshots/file-share-permissions.png)

### Domain Joined Workstation

The Windows 11 client machine was successfully joined to the domain and authenticated using domain credentials.

![Domain Join](screenshots/domain-join.png)
