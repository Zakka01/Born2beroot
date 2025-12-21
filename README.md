*This project has been created as part of the 42 curriculum by zahrabar*


## Project Description

This project is part of the Born2BeRoot curriculum. Its goal is to set up a secure Linux system by configuring users, permissions, services, and security policies. It also includes comparing different Linux distributions, firewalls, and security tools to understand their differences and advantages.


## Instructions

1. Use a Linux VM (Debian or Rocky Linux) for the setup.  
2. Partition the disks as required.  
3. Configure users, groups, and sudo privileges.  
4. Install and configure services such as SSH and UFW/AppArmor.  
5. Test security policies, including password rules, firewall rules, and AppArmor profiles.  
6. Create a **monitoring script** that prints key information about the server and the VM.


## Resources

- [VirtualBox Documentation](https://www.virtualbox.org/manual/UserManual.html)  
- [Official Debian Documentation](https://www.debian.org/doc/)  
- [AppArmor Documentation](https://documentation.ubuntu.com/server/how-to/security/apparmor/)  
- AI assistance was used for understanding commands, best practices, and writing explanations.


## Operating System Choice

I chose **Debian** because it is stable, reliable, has a large community, and is easy to manage. It is well-suited for general use and beginners, unlike Rocky Linux, which is designed for enterprise environments and can be harder for newcomers to set up.

- **Debian 12**
  - Pros: stable, large community, beginner-friendly  
  - Cons: older packages, slower updates
- **Rocky Linux**
  - Pros: enterprise-ready, secure and stable  
  - Cons: smaller community, harder for beginners


## Main Design Choices

- **Partitioning:** Boot, root (/), swap, home (/home), var (/var), tmp (/tmp), srv (/srv), var/log  
- **Security Policies:** SSH (no root login, custom port), password rules, firewall, sudo configuration  
- **User Management:** Normal users with sudo privileges, root access restricted  
- **Services Installed:** SSH, monitoring script, cockpit for monitoring and manage the server easly with a web interface 


## Comparisons

**1. Debian vs Rocky Linux**  
- Debian: stable, widely used, great for learning and servers  
- Rocky Linux: enterprise-focused, compatible with RHEL, designed for businesses

**2. AppArmor vs SELinux**  
- AppArmor: easier to configure, uses profiles per program  
- SELinux: more powerful and secure, more complex to manage

**3. UFW vs firewalld**  
- UFW: simple firewall, easy to use  
- firewalld: more advanced, flexible, better for enterprise networks

**4. VirtualBox vs UTM**  
- VirtualBox: works on most computers, full-featured  
- UTM: simpler, especially for macOS and ARM-based devices
