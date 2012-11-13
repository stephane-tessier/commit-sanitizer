# Commit Sanitizer

Commit Sanitizer is a set of scripts and a pre-commit hook for git that performs some actions to clean and sanitize code before commit in Git.

The hook-commit is customizable and we can enable/disable features regarding to the different kind of projects. 


## Actions

* Convert tabs to spaces (1 tab = 2 spaces)
* Convert EOL to CRLF
* Lint code :
 * jslint/jshint
 * php -l
 * coffee -l 
 * java -1
 * css lint (saas / less)

