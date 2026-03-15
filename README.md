# Active Directory Enterprise IAM Lab

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
