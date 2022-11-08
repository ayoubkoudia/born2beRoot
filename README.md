# born2beRoot!

**What is the difference between aptitude and apt?**

“Apart from main difference being that Aptitude is a high-level package manager while APT is lower-level package manager which can be used by other higher-level package managers, other main highlights that separate these two package managers are:

Aptitude is vaster in functionality than apt-get and integrates functionalities of apt-get and its other variants including apt-mark and apt-cache.
While apt-get handles all the package installation, up-gradation, system-upgradation, purging package, resolving dependencies etc., Aptitude handles lot more stuff than apt, including functionalities of apt-mark and apt-cache i.e. searching for a package in list of installed packages, marking a package to be automatically or manually installed, holding a package making it unavailable for up-gradation and so on.”

**LVM Structure**

The structure of a Logical Volume Manager disk environment is illustrated by Figure 1, below. Logical Volume Management enables the combining of multiple individual hard drives and/or disk partitions into a single volume group (VG). That volume group can then be subdivided into logical volumes (LV) or used as a single large volume. Regular file systems, such as EXT3 or EXT4, can then be created on a logical volume.

In Figure 1, two complete physical hard drives and one partition from a third hard drive have been combined into a single volume group. Two logical volumes have been created from the space in the volume group, and a filesystem, such as an EXT3 or EXT4 filesystem has been created on each of the two logical volumes.

Figure 1: LVM allows combining partitions and entire hard drives into Volume Groups.

Adding disk space to a host is fairly straightforward but, in my experience, is done relatively infrequently. The basic steps needed are listed below. You can either create an entirely new volume group or you can add the new space to an existing volume group and either expand an existing logical volume or create a new one.

**SSH**

The Secure Shell Protocol (SSH) is a cryptographic network protocol for operating network services securely over an unsecured network.[1] Its most notable applications are remote login and command-line execution.

![apt v aptitude](https://user-images.githubusercontent.com/93022275/200630852-388284ed-d041-45e0-ac96-3842c0d684d0.png)

![debian v centos](https://user-images.githubusercontent.com/93022275/200630857-5beb7b32-8a4c-41ec-99f1-bab126ff7f23.png)
![debian vs centos](https://user-images.githubusercontent.com/93022275/200630873-a70803d6-8252-4f34-9b90-7910b3a7a324.png)
![SElinux vs AppArmor](https://user-images.githubusercontent.com/93022275/200630875-de343e4f-7272-49f4-b4bb-dbec8926cf72.png)

**AppArmor**

AppArmor ("Application Armor") is a Linux kernel security module that allows the system administrator to restrict programs' capabilities with per-program profiles. Profiles can allow capabilities like network access, raw socket access, and the permission to read, write, or execute files on matching paths. AppArmor supplements the traditional Unix discretionary access control (DAC) model by providing mandatory access control (MAC). It has been partially included in the mainline Linux kernel since version 2.6.36 and its development has been supported by Canonical since 2009.

**UFW - Uncomplicated Firewall**

The default firewall configuration tool for Ubuntu is ufw. Developed to ease iptables firewall configuration, ufw provides a user friendly way to create an IPv4 or IPv6 host-based firewall. By default UFW is disabled.
