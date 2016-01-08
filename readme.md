# About this repo

Files in this repository are an example of how to set up a Drupal 7 site using Composer, as well as how to manage the code in a single repo.

# What's in the repo?
The repo contains the following:
* composer.json and lock
* .gitignore
* robots.txt and .htaccess
* custom scripts to do some cleanup work after install / update:
  * checkout the above two files after ```composer install``` or ```composer.update``` is run and the default files are restored
  * deletes the ```.gitignore``` file under the Drupal root so settings.php can be added to the git repo. _NOTE: The build tool must have write access to the Drupal root or the script will fail_

# Why are the directories structured differently to vanilla Drupal?
The Drupal core and libraries were installed using ```drupal-composer/drupal-project``` of http://drupal-composer.org/, which sets the Drupal root to ```web/```.

# Why storing some dependencies (i.e. custom code) in a single repo?
As [Composer recommends](https://getcomposer.org/doc/faqs/should-i-commit-the-dependencies-in-my-vendor-directory.md), dependencies like ```vendor```, Drupal core and contribs should not be stored in the same repository as composer.json for the reasons described in the linked document. So the .gitignore is written in such a way that vendor libraries, Drupal core, contribs and themes are ignored.

However, storing custom code in a separate repository and using ```git submodule``` or ```git subtree``` to set up local dev environments and managing the code can be a bit of a pain. The ```.gitignore``` includes lines that unignore directories where custom code is stored.

I'm also assuming the site would be built by a CI tool like Jenkins for environments other than local dev.

```robots.txt``` and ```.htaccess``` are also treated as custom code and hence stored under the Drupal root, as they are usually modified

This is an example and by no means recommended as the best practice.
