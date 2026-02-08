*This project has been created by Zakka01*


## Description

TheRoot is a system administration project focused on virtualization, OS configuration, and security. The goal is to set up a secure Linux server by implementing security policies, configuring essential services, and understanding system administration practices.


## Instructions

`Setup and Execution`

- 1 - Use a Linux VM (Debian or Rocky Linux) for the setup.
- 2 - Partition the disks as required.
- 3 - Configure users, groups, and sudo privileges.
- 4 - Install and configure services such as SSH and UFW.
- 5 - Test security policies, including password rules, firewall rules.
- 6 - Create a monitoring script that prints key information about the server and the VM.


## Resources

- [VirtualBox Documentation](https://www.virtualbox.org/manual/UserManual.html) - VM setup
- [Debian Documentation](https://www.debian.org/doc/) - System installation
- [AppArmor Documentation](https://documentation.ubuntu.com/server/how-to/security/apparmor/) - Security
- [UFW Documentation](https://help.ubuntu.com/community/UFW) - Firewall configuration
- `AI Usage`: Used for understanding system administration concepts, debugging configurations (SSH, sudo, password policies), optimizing the monitoring script, and explaining technical comparisons.


## Project Description

`Operating System Choice:` *Debian vs Rocky Linux*

I chose **Debian 12** for its stability, large community, and beginner-friendly approach.

- `Debian Pros : ` Stable, beginner-friendly, easy to setup.
- `Debian Cons : ` Older packages, slower updates.

- `Rocky Pros : ` Enterprise-grade, secure and stable.
- `Rocky Cons : ` smaller community, more complex for beginners

Debian is better suited for learning system administration fundamentals.


## Main Design Choices


**Partitioning (LVM) :**

- **/boot** (500MB): Separate bootloader protection
- **/** (2GB): Core system files
- **/home** (1GB): User data isolation
- **/var** (1GB): Log file isolation prevents DoS
- **/tmp** (500MB): Temporary files with noexec flag
- **/var/log** (500MB): Dedicated logs
- **swap** (1GB): Virtual memory

*LVM allows flexible resizing.*


**Security Policies :**

- **SSH**: Port 4242, no root login, key authentication
- **Password**: +10 chars, 30 day expiry, 7 day Warning before expiration, complexity requirements
- **Firewall**: UFW with default deny, only port 4242 open
- **Sudo**: 3 attempts, log sudo commands, TTY required


**User Management :**
- Non-root user with sudo privileges. Root SSH disabled

**Services :**
- Minimal installation: SSH, UFW, monitoring script, cron.

## Technical Comparisons

`Debian vs Rocky Linux`
- **Debian**: Best for learning, web servers, development. Uses APT, 2-3 year release cycle, AppArmor default.  
- **Rocky**: Enterprise production, more Secure, SELinux default.

`AppArmor vs SELinux`
- **AppArmor**: Path-based access control, easier for beginners. Default in Debian/Ubuntu.  
- **SELinux**: Label-based, Default in RHEL/Rocky. More powerful but complex.

`UFW vs firewalld`
- **UFW**: Simple syntax (`ufw allow 22`), perfect for single servers.
- **firewalld**: more advanced, flexible, better for enterprise networks.

`VirtualBox vs UTM`
- **VirtualBox**:  works on most computers, full-featured.
- **UTM**: simpler, especially for macOS but smaller community.
