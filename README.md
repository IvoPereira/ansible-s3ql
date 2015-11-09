# ansible-s3ql

[S3QL](https://bitbucket.org/nikratio/s3ql/) is a file system that stores all its data encrypted online using storage services like Google Storage, Amazon S3, or OpenStack.

[![Platforms](http://img.shields.io/badge/platforms-debian-green.svg?style=flat)](#)

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
          s3ql_storage_url: "s3://bucketname"
          s3ql_access_key_id: ABCDEFGHIJKLMN
          s3ql_secret_access_key: asdfghjklqwertyuiopzxcvbnm
          s3ql_encryption_password: 1qaz2wsx3edc4rfv5tgb6yhn7ujm8ik9ol0p

License
-------
[MIT](https://tldrlegal.com/license/mit-license)

Contributors
------------
* [Chris Olstrom](https://colstrom.github.io/)
* Aaron Pederson
* Christian Wagner
