# ansible-s3ql

[S3QL](https://bitbucket.org/nikratio/s3ql/) is a file system that stores all its data encrypted online using storage services like Google Storage, Amazon S3, or OpenStack.

[![Build Status](https://travis-ci.org/chriswayg/ansible-s3ql.svg?branch=master)](https://travis-ci.org/chriswayg/ansible-s3ql) [![Platforms](http://img.shields.io/badge/Platforms-Debian-green.svg?style=flat)](#) 

This ansible role enables encryption on s3ql by default and installs on Alpine, Debian Jessie or Stretch, while supplying a systemd unit file.

Tunables
--------
* `s3ql_mountpoint` (string) - Mountpoint for S3QL
* `s3ql_authinfo_file` (string) - Location of auth file
* `s3ql_cache_dir` (string) - Directory for cached data
* `s3ql_user` (string) - User to run S3QL as
* `s3ql_group` (string) - Group to run S3QL as
* `s3ql_storage_url` (string) - Storage URL
* `s3ql_access_key_id` (string) - Access Key ID for S3
* `s3ql_secret_access_key` (string) - Secret Access Key for S3
* `s3ql_encryption_password` (string) - Password for encryption?

Example Playbook
----------------
    - hosts: servers
      roles:
        - role: ansible-s3ql
          s3ql_storage_url: 's3://serverbackup'
          s3ql_access_key_id: 'ABCDEFGHIJKLMNOPQRST'
          s3ql_secret_access_key: 'AABBCCDDEEFFGGHHIIJJKKLLMMNNOOPPQQRR0123'
          s3ql_encryption_enabled: true
          s3ql_encryption_password: '1234567890abcdefghijklmnopqrstuvwxyz'

License
-------
[MIT](https://tldrlegal.com/license/mit-license)

Contributors
------------
* [Chris Olstrom](https://colstrom.github.io/)
* Aaron Pederson
* Christian Wagner
