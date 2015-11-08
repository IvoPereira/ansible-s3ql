#!/bin/bash
# wrapper to run script only once
set -e 

# Make S3QL filesystem
/usr/local/bin/.runonce/s3ql_makefs.expect

touch /usr/local/bin/.runonce/s3ql_makefs.done