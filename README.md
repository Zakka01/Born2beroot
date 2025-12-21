*This project has been created as part of the 42 curriculum by zahrabar*


## Description

This project is about setting up a secure Linux system as part of the Born2BeRoot curriculum.  
The goal is to configure users, permissions, services, and security policies, while comparing different Linux distributions, firewalls, and security tools.


## Instructions

1. Use a Linux VM (Debian or Rocky Linux) for setup.  
2. Partition the disks as required.  
3. Configure users, groups, and sudo privileges.  
4. Install and configure services like SSH, UFW/AppArmor.  
5. Test security policies (password policies, firewall rules, AppArmor profiles).  
6. Create a **monitoring script** that prints key information about the server and the VM.


## Resources

- VirtualBox Documentation: https://www.virtualbox.org/manual/UserManual.html
- Official Debian Documentation: https://www.debian.org/doc/ 
- AppArmor Documentation: https://documentation.ubuntu.com/server/how-to/security/apparmor/
- AI assistance: Used for understanding commands, best practices, and writing explanations.


### Operating System

I chose **Debian** because it's stable, reliable, has a large community, and is easy to manage and built for general use and beginners, making it simple than Rocky which is hard to setup and manage for the newcomers and since its built for enterprises and server environments.

- **Debian 12**
  - Pros: stable, large community, easy for beginners
  - Cons: older packages, slower updates
- **Rocky Linux**
  - Pros: enterprise-ready, Secure and stable
  - Cons: smaller community, Hard for beginners


### Main Design Choices

- *Partitioning:* Boot, root (/), swap, home (/home), var (/var), tmp (/tmp), srv (/srv) and (var/log)
- *Security Policies:* SSH (no root login, custom port), password rules, firewall and sudo configuration
- *User Management:* normal users with sudo, root restricted
- *Services Installed:* SSH, monitoring script


### Comparisons

**1 - Debian vs Rocky Linux**
Debian: very stable, widely used, great for learning and servers
Rocky Linux: designed for businesses, enterprise-focused, compatible with RHEL

**2 - AppArmor vs SELinux**
AppArmor: easier to configure, uses profiles per program
SELinux: more powerful and secure, but more complex to manage

**3 - UFW vs firewalld**
UFW: simple firewall, easy to use on the command line
firewalld: more advanced, flexible, better for enterprise networks

**4 - VirtualBox vs UTM**
VirtualBox: works on most computers, full-featured
UTM: simpler, especially for macOS and ARM-based devices