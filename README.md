# OneBase

Going through my bachelor's program I learned more about the various operating systems and thought that I had a few cool ideas that I'd like to try and make.

This project is more educational for me than anything, but if it turns into something bigger, then cool. Feel free to pitch me ideas to include in this.

## Resources Used

- [Linux From Scratch (LFS)](https://www.linuxfromscratch.org/lfs/)
- [LFS Online Book](https://www.linuxfromscratch.org/lfs/view/stable/)
  - [Position](https://www.linuxfromscratch.org/lfs/view/stable/chapter02/creatingpartition.html)
  - [rootFileSystem-FUSE](https://www.kernel.org/doc/html/next/filesystems/fuse.html)

## Design Principles

- Customizable
- Simple
- Flexible
- Endpoint and Server
- Supports multiple software install methods

## Coding Standards

- No abbreviations
- No hard coded values, all variables
- Un-nested as much as possible.
- Single Responsibility Functions
- System Functions are called by Functional Functions. Example:
    - Encrypt-Data
        - DES, AES

## To Do

- [ ] Linux Kernel - xConfig
- [ ] BootLoader Partition FileSystem - ext4 + GRUB
- [ ] root Partition Filesystem - XFS + FUSE
- [ ] Data Metadata
- [ ] Folder System
- [ ] UID System
- [ ] Access System
- [ ] Process Handler
- [ ] Process Scheduler
- [ ] Frame System
- [ ] Terminal System
- [ ] Encryption System - LUKS
- [ ] Hash System
- [ ] Workspace Application
- [ ] Data Explorer Application
- [ ] Data Editor Application
- [ ] Directory System
- [ ] System Manager
- [ ] Time System
- [ ] Networking System
- [ ] Data Backup System
- [ ] Install Systems
- [ ] Remote Configuration Manager

## Design Notes

### Data Metadata
 - **Properties:** WhenCreated, WhenChanged, WhoCreated, WhoChangedLast, WhenSynced, isLocked, isDeleted
 - Not all Metadata is required
 - Unfamiliar Metadata is kept
 - Able to add Metadata to file or folder

### UID System

- Everything has a UID
- UIDs are Recyclable
- UIDs are cataloged and search-able
- Certain UID Ranges are purged on reboot (Example: Process UIDs)
- **Base62:** 0-9, A-Z, a-z
- **Format:** U-####-#### (8^62 = 218,340,105,584,895)
- **Shortcut:** The character before the underscore (_) will be used as a filler for unspecified characters.
    - U-0000-0000 = U-0_0
    - U-0000-0001 = U-0_1
    - U-1111-1123 = U-1_23
    - U-1azz-zz23 = U-1az_23
- **Future:** D-# will be used for the shared Directory System, other letters may have purposes in the future.
- **Reservations:**

| Purpose | Prefix |
| ------- | ------ |
| System  | U-0    |
| File    | U-1    |
| Process | U-2    |

### Directory Service

- Users - Always member of Local Desktop
- Administrators - Install Applications, Modify Folder Permissions
- Roots - Modify Core Code
- Local Desktop - Can logon locally
- Remote Terminal - Can access system via Terminal remotely
- Remote Desktop - Can access system via Desktop remotely

### Install Systems
- git
- chocolatey