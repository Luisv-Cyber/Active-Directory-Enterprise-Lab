<!-- BANNER -->
<div align="center">
<img src="https://capsule-render.vercel.app/api?type=cylinder&color=0:010810,40:0a2a4a,80:0077bb,100:009ed4&height=190&section=header&text=Active%20Directory%20Enterprise%20IAM%20Lab&fontSize=42&fontColor=ffffff&fontAlignY=50&desc=Domain%20Controller%20%E2%80%A2%20RBAC%20%E2%80%A2%20GPO%20%E2%80%A2%20PowerShell%20%E2%80%A2%20NTFS&descSize=17&descAlignY=70&animation=fadeIn&stroke=4cc8ee&strokeWidth=1" width="100%"/>
</div>

<div align="center">

<img src="https://img.shields.io/badge/Platform-Microsoft%20Hyper--V-0078D4?style=for-the-badge&logo=microsoft&logoColor=white"/>
&nbsp;
<img src="https://img.shields.io/badge/DC-Windows%20Server%202019-0078D4?style=for-the-badge&logo=windows&logoColor=white"/>
&nbsp;
<img src="https://img.shields.io/badge/Client-Windows%2011-0078D4?style=for-the-badge&logo=windows11&logoColor=white"/>
&nbsp;
<img src="https://img.shields.io/badge/Status-Complete-00c8a8?style=for-the-badge&logo=checkmarx&logoColor=white"/>

</div>

<img src="https://capsule-render.vercel.app/api?type=rect&color=0:010810,50:0077bb,100:010810&height=2" width="100%"/>

<br/>

## `> cat overview.txt`

```bash
[*] Lab Name    : Active Directory Enterprise IAM Lab
[*] Platform    : Microsoft Hyper-V (Internal Lab Switch)
[*] DC          : DC01 — Windows Server (Domain Controller)
[*] Client      : CLIENT01 — Windows 11 Workstation (Domain-joined)
[*] Network     : Lab-Switch (Internal)

[+] This lab simulates a real enterprise Active Directory environment
[+] demonstrating system administration and IAM fundamentals used
[+] in production Windows infrastructure every day.

[✓] Key areas covered:
    → Active Directory Domain Services (AD DS) deployment
    → Organizational Unit (OU) hierarchy design
    → PowerShell-automated user provisioning
    → Role-Based Access Control (RBAC) via security groups
    → NTFS + SMB file share permission management
    → Group Policy configuration and enforcement
    → Password policy and account lockout protection
    → Domain-joined workstation authentication
    → Infrastructure troubleshooting (DNS, networking, AD)
```

<img src="https://capsule-render.vercel.app/api?type=rect&color=0:010810,50:0077bb,100:010810&height=2" width="100%"/>

<br/>

## `> cat architecture.txt`

```text
┌─────────────────────────────────────────────┐
│              Hyper-V Host Machine            │
└─────────────────────────────────────────────┘
                      │
              Lab-Switch (Internal)
                      │
          ┌───────────┴───────────┐
          │                       │
   ┌──────┴──────┐         ┌──────┴──────┐
   │    DC01      │         │  CLIENT01   │
   │ Windows      │         │ Windows 11  │
   │ Server       │◄───────►│ Workstation │
   │ Domain       │  Domain │ Domain      │
   │ Controller   │  Auth   │ Joined      │
   └─────────────┘         └─────────────┘
         │
         ├── Active Directory Domain Services
         ├── DNS Server
         ├── DHCP (optional)
         ├── File Server (SMB Shares)
         └── Group Policy Management
```

<img src="https://capsule-render.vercel.app/api?type=rect&color=0:010810,50:0077bb,100:010810&height=2" width="100%"/>

<br/>

## `> ls -la ~/skills`

<div align="center">

<table>
<tr>
<td align="center" width="210">
<img src="https://img.shields.io/badge/🗂-AD_%26_Domain-0a2a4a?style=for-the-badge"/><br/><br/>
<img src="https://img.shields.io/badge/AD%20DS%20Deployment-0078D4?style=flat-square&logo=microsoft&logoColor=white"/><br/>
<img src="https://img.shields.io/badge/Domain%20Controller-0078D4?style=flat-square&logo=windows&logoColor=white"/><br/>
<img src="https://img.shields.io/badge/DNS%20Configuration-0078D4?style=flat-square&logo=microsoft&logoColor=white"/><br/>
<img src="https://img.shields.io/badge/Domain%20Join-0078D4?style=flat-square&logo=windows&logoColor=white"/><br/>
<img src="https://img.shields.io/badge/OU%20Hierarchy%20Design-0077bb?style=flat-square&logo=microsoft&logoColor=white"/>
</td>
<td align="center" width="210">
<img src="https://img.shields.io/badge/👥-IAM_%26_RBAC-0a2a4a?style=for-the-badge"/><br/><br/>
<img src="https://img.shields.io/badge/User%20Provisioning-009ed4?style=flat-square&logo=microsoft&logoColor=white"/><br/>
<img src="https://img.shields.io/badge/Security%20Groups-009ed4?style=flat-square&logo=microsoft&logoColor=white"/><br/>
<img src="https://img.shields.io/badge/RBAC%20Implementation-009ed4?style=flat-square&logo=authelia&logoColor=white"/><br/>
<img src="https://img.shields.io/badge/Least%20Privilege-009ed4?style=flat-square&logo=microsoft&logoColor=white"/><br/>
<img src="https://img.shields.io/badge/Account%20Lockout-4cc8ee?style=flat-square&logo=microsoft&logoColor=white"/>
</td>
<td align="center" width="210">
<img src="https://img.shields.io/badge/📁-File_%26_Permissions-0a2a4a?style=for-the-badge"/><br/><br/>
<img src="https://img.shields.io/badge/NTFS%20Permissions-5391FE?style=flat-square&logo=windows&logoColor=white"/><br/>
<img src="https://img.shields.io/badge/SMB%20File%20Shares-5391FE?style=flat-square&logo=windows&logoColor=white"/><br/>
<img src="https://img.shields.io/badge/Dept%20Share%20Config-5391FE?style=flat-square&logo=microsoft&logoColor=white"/><br/>
<img src="https://img.shields.io/badge/Access%20Control%20Lists-5391FE?style=flat-square&logo=microsoft&logoColor=white"/>
</td>
<td align="center" width="210">
<img src="https://img.shields.io/badge/⚡-GPO_%26_PowerShell-0a2a4a?style=for-the-badge"/><br/><br/>
<img src="https://img.shields.io/badge/Group%20Policy%20(GPO)-5391FE?style=flat-square&logo=powershell&logoColor=white"/><br/>
<img src="https://img.shields.io/badge/Password%20Policy-5391FE?style=flat-square&logo=powershell&logoColor=white"/><br/>
<img src="https://img.shields.io/badge/PowerShell%20Automation-5391FE?style=flat-square&logo=powershell&logoColor=white"/><br/>
<img src="https://img.shields.io/badge/Bulk%20User%20Provisioning-5391FE?style=flat-square&logo=powershell&logoColor=white"/>
</td>
</tr>
</table>

</div>

<img src="https://capsule-render.vercel.app/api?type=rect&color=0:010810,50:0077bb,100:010810&height=2" width="100%"/>

<br/>

## `> ./run_lab.sh`

### `[Phase 01]` — Hyper-V Environment Setup

```powershell
# Created two VMs on Hyper-V with internal Lab-Switch networking
# DC01     → Windows Server  | 2 vCPU | 4GB RAM | 50GB Disk
# CLIENT01 → Windows 11      | 2 vCPU | 4GB RAM | 50GB Disk

# Configured internal switch to isolate lab traffic
# Assigned static IP to DC01 for stable domain resolution
```

---

### `[Phase 02]` — Active Directory Domain Services (AD DS)

```powershell
# Promoted DC01 to Domain Controller
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# Created new AD forest and domain
Install-ADDSForest -DomainName "company.local" -InstallDns

# Verified domain promotion
Get-ADDomain
Get-ADDomainController
```

---

### `[Phase 03]` — Organizational Unit (OU) Hierarchy

```powershell
# Built OU structure mirroring enterprise department layout
New-ADOrganizationalUnit -Name "IT"         -Path "DC=company,DC=local"
New-ADOrganizationalUnit -Name "HR"         -Path "DC=company,DC=local"
New-ADOrganizationalUnit -Name "Finance"    -Path "DC=company,DC=local"
New-ADOrganizationalUnit -Name "Sales"      -Path "DC=company,DC=local"
New-ADOrganizationalUnit -Name "Management" -Path "DC=company,DC=local"

# Result: Clean OU hierarchy for scoped GPO and delegation
```

---

### `[Phase 04]` — PowerShell Automated User Provisioning

```powershell
# Bulk user creation script — users placed into correct OUs automatically
$users = @(
    @{Name="ITUser1";  OU="OU=IT,DC=company,DC=local"},
    @{Name="HRUser1";  OU="OU=HR,DC=company,DC=local"},
    @{Name="FinUser1"; OU="OU=Finance,DC=company,DC=local"}
)

foreach ($user in $users) {
    New-ADUser `
        -Name              $user.Name `
        -SamAccountName    $user.Name `
        -UserPrincipalName "$($user.Name)@company.local" `
        -Path              $user.OU `
        -AccountPassword   (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) `
        -Enabled           $true
}

# Verify all users created
Get-ADUser -Filter * | Select-Object Name, DistinguishedName
```

---

### `[Phase 05]` — Security Groups & RBAC

```powershell
# Created departmental security groups for RBAC
New-ADGroup -Name "IT_Admins_GG"    -GroupScope Global -Path "OU=IT,DC=company,DC=local"
New-ADGroup -Name "HR_Access"       -GroupScope Global -Path "OU=HR,DC=company,DC=local"
New-ADGroup -Name "Finance_Access"  -GroupScope Global -Path "OU=Finance,DC=company,DC=local"
New-ADGroup -Name "Sales_Access"    -GroupScope Global -Path "OU=Sales,DC=company,DC=local"
New-ADGroup -Name "Managers"        -GroupScope Global -Path "OU=Management,DC=company,DC=local"

# Add users to their respective security groups
Add-ADGroupMember -Identity "IT_Admins_GG"   -Members "ITUser1"
Add-ADGroupMember -Identity "HR_Access"       -Members "HRUser1"
Add-ADGroupMember -Identity "Finance_Access"  -Members "FinUser1"
```

---

### `[Phase 06]` — NTFS Permissions & File Shares

```powershell
# Created departmental share folders on DC01
New-Item -Path "C:\Shares\IT"      -ItemType Directory
New-Item -Path "C:\Shares\HR"      -ItemType Directory
New-Item -Path "C:\Shares\Finance" -ItemType Directory

# Applied NTFS permissions — group-based access only
# IT folder  → IT_Admins_GG (Modify)
# HR folder  → HR_Access     (Modify)
# Finance    → Finance_Access (Modify)

# Created SMB shares for network access
New-SmbShare -Name "IT$"      -Path "C:\Shares\IT"      -FullAccess "IT_Admins_GG"
New-SmbShare -Name "HR$"      -Path "C:\Shares\HR"      -FullAccess "HR_Access"
New-SmbShare -Name "Finance$" -Path "C:\Shares\Finance"  -FullAccess "Finance_Access"
```

---

### `[Phase 07]` — Group Policy Configuration

```powershell
# Created and linked GPO for password and lockout policy
New-GPO -Name "Security Baseline Policy" | `
    New-GPLink -Target "DC=company,DC=local"

# Password policy settings (via Default Domain Policy)
# Min length    : 10 characters
# Complexity    : Enabled
# Max age       : 90 days
# Lockout       : 5 failed attempts → 15 min lockout
```

---

### `[Phase 08]` — Domain Join & Authentication Validation

```powershell
# Joined CLIENT01 to company.local domain
Add-Computer -DomainName "company.local" -Credential (Get-Credential) -Restart

# Post-join validation on CLIENT01
whoami                          # verify domain user context
nltest /dsgetdc:company.local   # confirm DC reachable
gpresult /r                     # verify GPO applied
net use \\DC01\IT$              # test share access
```

<img src="https://capsule-render.vercel.app/api?type=rect&color=0:010810,50:0077bb,100:010810&height=2" width="100%"/>

<br/>

## `> cat results.log`

```bash
[✓] Hyper-V lab environment deployed — DC01 + CLIENT01 on internal switch
[✓] AD DS installed and DC01 promoted to domain controller for company.local
[✓] DNS configured and resolving correctly within the domain
[✓] OU hierarchy created — IT, HR, Finance, Sales, Management
[✓] Users provisioned automatically via PowerShell bulk script
[✓] Security groups created and users assigned per department
[✓] RBAC enforced — users can only access their department's share
[✓] NTFS and SMB permissions configured and validated
[✓] Group Policy applied — password complexity + account lockout active
[✓] CLIENT01 joined to domain and authenticated with domain credentials
[✓] GPO verified on CLIENT01 with gpresult /r
```

<img src="https://capsule-render.vercel.app/api?type=rect&color=0:010810,50:0077bb,100:010810&height=2" width="100%"/>

<br/>

## `> ls screenshots/`

### Hyper-V Virtual Machines
> Both the Domain Controller and workstation deployed in Hyper-V.

![Hyper-V VMs Running](https://github.com/Luisv-Cyber/Active-Directory-Enterprise-Lab/blob/main/screenshots/Screenshot%202026-03-15%20115836.png?raw=true)

---

### Active Directory OU Structure
> OUs created to simulate enterprise department-based identity organization.

![OU Structure](https://github.com/Luisv-Cyber/Active-Directory-Enterprise-Lab/blob/main/screenshots/Screenshot%202026-03-15%20122836.png?raw=true)

---

### Security Groups (RBAC)
> Departmental security groups implementing role-based access control.

![Security Groups](https://github.com/Luisv-Cyber/Active-Directory-Enterprise-Lab/blob/main/screenshots/Screenshot%202026-03-15%20123151.png?raw=true)

---

### PowerShell User Provisioning Script
> Bulk user creation script placing accounts into correct OUs automatically.

![PowerShell Script](https://github.com/Luisv-Cyber/Active-Directory-Enterprise-Lab/blob/main/screenshots/Screenshot%202026-03-14%20193615.png?raw=true)

---

### Provisioned Users in Active Directory
> User accounts created and organized within correct Organizational Units.

![Users Created](https://github.com/Luisv-Cyber/Active-Directory-Enterprise-Lab/blob/main/screenshots/Screenshot%202026-03-15%20123638.png?raw=true)

---

### NTFS File Share Permissions
> Departmental shares configured with group-based NTFS permissions.

![File Share Permissions](https://github.com/Luisv-Cyber/Active-Directory-Enterprise-Lab/blob/main/screenshots/Screenshot%202026-03-15%20123914.png?raw=true)

---

### Domain-Joined Workstation
> CLIENT01 successfully joined to company.local and authenticated with domain credentials.

![Domain Join](https://github.com/Luisv-Cyber/Active-Directory-Enterprise-Lab/blob/main/screenshots/Screenshot%202026-03-15%20124438.png?raw=true)

<img src="https://capsule-render.vercel.app/api?type=rect&color=0:010810,50:0077bb,100:010810&height=2" width="100%"/>

<br/>

## `> cat troubleshooting.log`

| # | Issue | Root Cause | Fix Applied |
|:---:|---|---|---|
| 1 | CLIENT01 couldn't find domain | DNS pointing to wrong server | Set CLIENT01 DNS to DC01's static IP |
| 2 | GPO not applying to workstation | OU link missing or not enforced | Relinked GPO to correct OU and ran `gpupdate /force` |
| 3 | File share access denied | NTFS permissions missing for security group | Added group to ACL with correct permission level |
| 4 | PowerShell script error on user creation | User already existed from a prior test run | Added `-ErrorAction SilentlyContinue` and cleaned stale accounts |

<img src="https://capsule-render.vercel.app/api?type=rect&color=0:010810,50:0077bb,100:010810&height=2" width="100%"/>

<br/>

## `> cat next_steps.sh`

```bash
#!/bin/bash

echo "[→] Implement fine-grained password policies per OU"
echo "[→] Configure audit policy — log logon events and object access"
echo "[→] Add a read-only domain controller (RODC) for branch simulation"
echo "[→] Integrate Azure AD Connect for hybrid identity scenario"
echo "[→] Set up delegated OU administration (help desk role)"
echo "[→] Test account lockout and unlock workflow end-to-end"
echo "[→] Add architecture diagram with Hyper-V topology"
```

<img src="https://capsule-render.vercel.app/api?type=rect&color=0:010810,50:0077bb,100:010810&height=2" width="100%"/>

<br/>

## `> tree .`

```text
Active-Directory-Enterprise-Lab/
├── README.md
├── scripts/
│   └── New-BulkADUsers.ps1
└── screenshots/
    ├── Screenshot 2026-03-15 115836.png   # Hyper-V VMs
    ├── Screenshot 2026-03-15 122836.png   # OU Structure
    ├── Screenshot 2026-03-15 123151.png   # Security Groups
    ├── Screenshot 2026-03-14 193615.png   # PowerShell Script
    ├── Screenshot 2026-03-15 123638.png   # Users Created
    ├── Screenshot 2026-03-15 123914.png   # File Share Permissions
    └── Screenshot 2026-03-15 124438.png   # Domain Join
```

<img src="https://capsule-render.vercel.app/api?type=rect&color=0:010810,50:0077bb,100:010810&height=2" width="100%"/>

<br/>

## `> grep -i "resume" summary.txt`

> Deployed a full enterprise Active Directory environment in Hyper-V — designed OU hierarchy, automated user provisioning with PowerShell, implemented RBAC via security groups, configured NTFS and SMB file share permissions, enforced Group Policy for password and lockout policy, and validated domain authentication from a Windows 11 workstation.

<br/>

<div align="center">

**Part of the [Luisv-Cyber](https://github.com/Luisv-Cyber) security & sysadmin lab portfolio**

<a href="https://github.com/Luisv-Cyber">
  <img src="https://img.shields.io/badge/GitHub-Luisv--Cyber-181717?style=for-the-badge&logo=github&logoColor=white"/>
</a>
&nbsp;
<a href="https://linkedin.com/in/luisvega03">
  <img src="https://img.shields.io/badge/LinkedIn-luisvega03-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white"/>
</a>

</div>

<br/>

<!-- FOOTER -->
<div align="center">
<img src="https://capsule-render.vercel.app/api?type=waving&color=0:009ed4,50:0077bb,100:010810&height=110&section=footer" width="100%"/>
</div>
