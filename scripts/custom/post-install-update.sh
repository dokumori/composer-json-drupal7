#!/bin/bash

# This script removes the .gitignore file under the Drupal root
# so setting.php can be stored in the repo.
# However, the following command will fail if the write permission is not
# granted to your build tool. 

rm web/.gitignore
