# php-calculator

Calculator example in PHP

## Description

My first PHP app, trying out with a simple calculator.

## System Requirements

1. Windows 10

## Tools to install

As I am working on windows 10, instead of LAMP stack, I used the WAMP stack. From the Apache documentation, I have found this for [Downloading Apache for Windows](https://httpd.apache.org/docs/current/platform/windows.html#down).

From the available options for deploying Apache httpd(webserver) in Windows, I have chosen to install **Bitnami WAMP Stack**, provides a complete, fully-integrated and ready to run WAMP development environment.

#### Note: For further documentation, refer [Bitnami WAMP Stack Dcumentation](https://bitnami.com/stack/wamp/README.txt)

After installation, try the default port is 80 (localhost)

To test the web server and PHP are installed correctly:

Go to your main directory where the Apache installed

    "installdir/apache2/htdocs"

In my case, the path is

    C:\Bitnami\wampstack-7.4.7-0\apache2\htdocs

# Application

Created a new file calculator.php

1. Added HTML Content with PHP.
2. Utilized Bootstrap 4.5 [dependencies](https://getbootstrap.com/docs/4.5/getting-started/introduction/#quick-start)
3. Tested if bootstrap works, with sample div tag.
4. UI modifications - Utilized bootstrap for UI.
5. Learnt creating classes and function in PHP, POST request for calculator operations.

# Testing

## Using Robot Framework

### Requirements

Install the following tools:

    1. Python3 (this installs pip)
    2. pip install robotframework
    3. pip install robotframework-selenium2library

### The tests can be run in two ways:

Open the files in VS Code and open terminal, to run below commands:

Note: The tests can be normally run in CMD prompt, is VS Code is not available.

1. This runs all test cases

```
    robot php_calculator.robot
```

2. This command runs test cases by specified tag, where tag relates to one of the following: **add, sub, mul, div, divbyzero**

```
    robot --inculde=<tag> php_calculator.robot

    for e.g., robot --include=add php_calculator.robot
```
