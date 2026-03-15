# Lab Build Notes

This document contains summarized build notes for the Active Directory Enterprise IAM Lab environment.

---

## Lab Objective

The goal of this lab was to design and deploy a simulated enterprise Active Directory environment to practice system administration and Identity & Access Management (IAM) concepts including:

- Active Directory Domain Services deployment
- Organizational Unit (OU) design
- Security group management
- Role-Based Access Control (RBAC)
- File share permissions
- Group Policy configuration
- Domain authentication

---

## Environment Setup

The lab was deployed using Hyper-V virtualization.

### Virtual Machines

| Machine | Role |
|-------|------|
| DC01 | Windows Server Domain Controller |
| Client01 | Windows 11 Domain Workstation |

### Network Configuration

```
Virtual Switch: Lab-Switch
IP Range: 192.168.10.0/24
Domain Controller IP: 192.168.10.10
DNS Server: 192.168.10.10
```

---

## Active Directory Configuration

### Domain

```
company.local
```

### Organizational Unit Structure

```
Company
│
├── Users
│   ├── IT
│   ├── HR
│   ├── Finance
│   ├── Sales
│   └── Management
│
├── Groups
├── Computers
├── Servers
└── Service Accounts
```

### Security Groups

Security groups were created to support Role-Based Access Control:

```
IT_admins_GG
HR_Access
Finance_Access
Sales_Access
Managers
Helpdesk
```

### User Provisioning

PowerShell was used to automate the creation of user accounts for each department.

Example naming convention:

```
ITUser1
HRUser1
FinanceUser1
```

---

## File Server Configuration

Departmental file shares were created under:

```
C:\Shares
```

Folders created:

```
IT
HR
Finance
Sales
Management
```

Access permissions were assigned using security groups to enforce RBAC.

Example access model:

```
User → Security Group → Resource
```

---

## Group Policy Configuration

A Group Policy Object (GPO) was created to map departmental drives.

Example:

```
I: → \\DC01\IT
```

This ensures users automatically receive access to their departmental share when logging in.

---

## Troubleshooting Notes

Several common infrastructure issues were encountered and resolved during the lab build.

### DNS Misconfiguration

Problem:

Client machine could not locate the domain during join attempt.

Solution:

Configured the client DNS server to point to the domain controller:

```
192.168.10.10
```

---

### APIPA Address Issue

Problem:

Client machine received a `169.254.x.x` address.

Cause:

No DHCP server present in the lab network.

Solution:

Configured manual IP address.

---

### Share Permission Conflict

Problem:

Users could not access departmental shares.

Cause:

Mismatch between Share permissions and NTFS permissions.

Solution:

Ensured the appropriate security group was assigned to both permission layers.
