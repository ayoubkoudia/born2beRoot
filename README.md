# born2beRoot!
Virtual Machines

###### What is a VM?---------------------------

A virtual machine (VM) is a virtual environment that works like a computer within a computer. It runs on an isolated partition of its host computer with its own CPU power, memory, operating system (such as Windows, Linux, macOS), and other resources. End users can run applications on VMs and use them as they normally would on their workstations.

<img width="1034" alt="200386352-986a06a4-bfae-4b2f-8100-f8f505c059c5" src="https://user-images.githubusercontent.com/93022275/200650119-dbfbb58b-aa25-4513-abdd-535808010b61.png">

Why VM's--------------------------------

The main purpose of VMs is to operate multiple operating systems at the same time, from the same piece of hardware. Without virtualization, operating multiple systems — like Windows and Linux — would require two separate physical units.

    No separate hardware needed, so you don't need to buy a new device.
    You don't engage the main OS.


![debian v centos](https://user-images.githubusercontent.com/93022275/200630857-5beb7b32-8a4c-41ec-99f1-bab126ff7f23.png)

How a VM works?------------------------

The HyperVisor(the software that creates and runs VMs) takes hardware resources from the host OS and creates virtual CPU, virtual RAM, virtual storage for the virtual machine.

HyperVisor 2 Types:--------------------

![200386434-f719906b-77a3-4c34-b04e-e6fe7c3e9a80](https://user-images.githubusercontent.com/93022275/200650487-443b9946-678e-4064-b06d-408544844de4.jpeg)


NB: you only can share hardware resources you actually have.

NB: VM is completely isolated, that's why if something breaks inside the VM it doesn't effect on the host machine.

**What is the difference between aptitude and apt?**----------

“Apart from main difference being that Aptitude is a high-level package manager while APT is lower-level package manager which can be used by other higher-level package managers, other main highlights that separate these two package managers are:

Aptitude is vaster in functionality than apt-get and integrates functionalities of apt-get and its other variants including apt-mark and apt-cache.
While apt-get handles all the package installation, up-gradation, system-upgradation, purging package, resolving dependencies etc., Aptitude handles lot more stuff than apt, including functionalities of apt-mark and apt-cache i.e. searching for a package in list of installed packages, marking a package to be automatically or manually installed, holding a package making it unavailable for up-gradation and so on.”

**Linux distributions:**-----------

A Linux distribution (often abbreviated as distro) is an operating system made from a software collection that is based upon the Linux kernel and, often, a package management system.
https://upload.wikimedia.org/wikipedia/commons/1/1b/Linux_Distribution_Timeline.svg

**Partitions**--------------

A hard disk can be divided into several partitions. Each partition functions as if it were a separate hard disk. The idea is that if you have one hard disk, and want to have, say, two operating systems on it, you can divide the disk into two partitions. Each operating system uses its partition as it wishes and doesn't touch the other ones. This way the two operating systems can co-exist peacefully on the same hard disk. Without partitions one would have to buy a hard disk for each operating system.

**Linux Directory Structure**

![200386755-b73099e8-e8d8-4b6c-aec1-b14815db0a98](https://user-images.githubusercontent.com/93022275/200652164-a6da2fb5-8f47-4d81-9bb7-84e983349e30.png)

**Package Management System:**------------

A package-management system is a collection of software tools that automates the process of installing, upgrading, configuring, and removing computer programs for a computer in a consistent manner.


![apt v aptitude](https://user-images.githubusercontent.com/93022275/200630852-388284ed-d041-45e0-ac96-3842c0d684d0.png)
**LVM Structure**

The structure of a Logical Volume Manager disk environment is illustrated by Figure 1, below. Logical Volume Management enables the combining of multiple individual hard drives and/or disk partitions into a single volume group (VG). That volume group can then be subdivided into logical volumes (LV) or used as a single large volume. Regular file systems, such as EXT3 or EXT4, can then be created on a logical volume.

In Figure 1, two complete physical hard drives and one partition from a third hard drive have been combined into a single volume group. Two logical volumes have been created from the space in the volume group, and a filesystem, such as an EXT3 or EXT4 filesystem has been created on each of the two logical volumes.

Figure 1: LVM allows combining partitions and entire hard drives into Volume Groups.

Adding disk space to a host is fairly straightforward but, in my experience, is done relatively infrequently. The basic steps needed are listed below. You can either create an entirely new volume group or you can add the new space to an existing volume group and either expand an existing logical volume or create a new one.

**SSH**------------------
![200386538-2f128d28-83f8-417c-ab78-924d2a721458](https://user-images.githubusercontent.com/93022275/200650631-5f9caa52-df1c-421b-a9de-cd5e54484e36.png)

The Secure Shell Protocol (SSH) is a cryptographic network protocol for operating network services securely over an unsecured network.[1] Its most notable applications are remote login and command-line execution.

![SElinux vs AppArmor](https://user-images.githubusercontent.com/93022275/200630875-de343e4f-7272-49f4-b4bb-dbec8926cf72.png)

**AppArmor**-----------

AppArmor ("Application Armor") is a Linux kernel security module that allows the system administrator to restrict programs' capabilities with per-program profiles. Profiles can allow capabilities like network access, raw socket access, and the permission to read, write, or execute files on matching paths. AppArmor supplements the traditional Unix discretionary access control (DAC) model by providing mandatory access control (MAC). It has been partially included in the mainline Linux kernel since version 2.6.36 and its development has been supported by Canonical since 2009.

**UFW - Uncomplicated Firewall**--------------------

The default firewall configuration tool for Ubuntu is ufw. Developed to ease iptables firewall configuration, ufw provides a user friendly way to create an IPv4 or IPv6 host-based firewall. By default UFW is disabled.

How to implement UFW with SSH-----------------------


UFW (Uncomplicated Firewall) is a software application responsible for ensuring that the system administrator can manage iptables in a simple way. Since it is very difficult to work with iptables, UFW provides us with an interface to modify the firewall of our device (netfilter) without compromising security. Once we have UFW installed, we can choose which ports we want to allow connections, and which ports we want to close. This will also be very useful with SSH, greatly improving all security related to communications between devices.

**What is cron and what is wall?**------------------

Once we know a little more about how to build a server inside a Virtual Machine (remember that you also have to look in other pages apart from this README), we will see two commands that will be very helpful in case of being system administrators. These commands are:

Cron: Linux task manager that allows us to execute commands at a certain time. We can automate some tasks just by telling cron what command we want to run at a specific time. For example, if we want to restart our server every day at 4:00 am, instead of having to wake up at that time, cron will do it for us.
Wall: command used by the root user to send a message to all users currently connected to the server. If the system administrator wants to alert about a major server change that could cause users to log out, the root user could alert them with wall.

ressources---------------------------------------------

https://linuxize.com/post/how-to-list-users-in-linux/

https://phoenixnap.com/kb/how-to-enable-ssh-on-debian

https://www.networkworld.com/article/2726217/how-to-enforce-password-complexity-on-linux.html

https://www.redhat.com/sysadmin/lvm-vs-partitioning

https://documentation.arcserve.com/Arcserve-UDP/Available/V6.5/ENU/Bookshelf_Files/HTML/Agent%20Online%20Help%20Linux/Content/AgentforLinuxUserGuide/udpl_config_sudo_debian.htm

https://wiki.debian.org/sudo/

https://manpages.debian.org/bullseye/sudo-ldap/sudoers.5.en.html
(tag_spec)

https://www.tecmint.com/sudoers-configurations-for-setting-sudo-in-linux/

https://debian-facile.org/doc:securite:passwd:libpam-pwquality

https://manpages.debian.org/stretch/libpam-pwquality/pam_pwquality.8.en.html
(passwd)

https://www.youtube.com/watch?v=WMy3OzvBWc0

https://www.redhat.com/sysadmin/lvm-vs-partitioning

https://linuxize.com/post/how-to-list-groups-in-linux/  

https://www.cloudpanel.io/tutorial/how-to-add-user-to-sudoers-in-debian/  

https://webdock.io/en/docs/how-guides/system-maintenance/how-configure-crontab-linux (crontab)   

(monitoring)https://www.cyberciti.biz/faq/crontab-every-10-min/   

https://dev.to/kcdchennai/demystifying-linux-the-purpose-of-bin-usrbin-and-usrlocalbin-5a8e 

https://serverfault.com/questions/287724/can-i-place-my-script-in-usr-bin  

https://unix.stackexchange.com/questions/604818/where-how-should-i-store-scripts   

https://www.freecodecamp.org/news/shell-scripting-crash-course-how-to-write-bash-scripts-in-linux/   

https://crontab.guru/#*/10  

https://www.networkworld.com/article/2715970/counting-processors-on-your-linux-box.html   

https://www.2daygeek.com/linux-check-cpu-memory-swap-utilization-percentage/  
