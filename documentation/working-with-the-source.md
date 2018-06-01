---
layout: page
title: "Working With The Source"
---

You can use the [source repository](https://github.com/firewalld/firewalld) directly to test out changes.

To check out the source repository, you can use:

    git clone https://github.com/firewalld/firewalld.git

This will create a local copy of the repository.

Change into the firewalld base directory of the repository and set the following environment variables:

    export FIREWALLD_DEVEL_ENV=$(pwd)/src
    export PYTHONPATH=$FIREWALLD_DEVEL_ENV

Install the following requirements or packages:

    desktop-file-utils: /usr/bin/desktop-file-install
    gettext
    intltool
    glib2: /usr/bin/glib-compile-schemas
    glib2-devel: /usr/share/aclocal/gsettings.m4
    systemd-units
    iptables
    ebtables
    ipset

For use with Python 3:

    python3-dbus
    python3-slip-dbus
    python3-decorator
    python3-gobject

For use with Python 2:

    dbus-python
    python-slip-dbus (http://fedorahosted.org/python-slip)
    python-decorator
    pygobject3-base (non-cairo parts of pygobject3)

To be able to create man pages and documentation from docbook files:

    docbook-style-xsl


Use

    ./autogen.sh

in the base directory to create for example src/firewall/config/__init__.py

Use

    make

to create the documentation and to update the po files.

## Start the Daemon

As user root you can start the firewall daemon in a termal for debugging:

    cd src
    ./firewalld --nofork --debug

Different debug levels are supported here. The default is debug level `1` if `--debug` is added to the command line. Higher debug levels can be specified with `--debug=<level>`. The higher the debug level the more output. The highest debug level is `10`.

The debug levels:

| Debug level | Output      |
| ----------- | ----------- |
|           1 | Loading config files, D-Bus method calls |
|           2 | + Backend calls, D-Bus Introspect method calls, access checks |
|           3 | + Rules that are added by the backends |
|           4 | + Transaction steps |
|       5 - 9 | Currently unused
|          10 | + Introspection XML data |

## Use Command Line Clients

You can also use the command line clients like `firewall-cmd` from the source repo:

    cd src
    ./firewall-cmd --state

Also the GUI tools like firewall-config can be started directly in the src directory.


## RPM package

For Fedora and RHEL based distributions, there is a spec file in the source repo named firewalld.spec. This should be usable for Fedora versions `>= 16` and RHEL or CentOs `>= 7`.


## Links

    Homepage:          http://firewalld.org
    Report a bug:      https://github.com/firewalld/firewalld/issues
    Git repo browser:  https://github.com/firewalld/firewalld
    Git repo:          https://github.com/firewalld/firewalld.git
    Documentation:     https://fedoraproject.org/wiki/FirewallD


## Mailing lists

    For usage:         https://fedorahosted.org/mailman/listinfo/firewalld-users
    For development:   https://fedorahosted.org/mailman/listinfo/firewalld-devel


## Directory Structure

    config/                 Configuration files
    config/icmptypes/       Predefined ICMP types
    config/services/        Predefined services
    config/xmlschema/       XML Schema checks for config files
    config/zones/           Predefined zones
    config/ipsets/          Predefined ipsets
    doc/                    Documentation
    doc/man/                Base directory for man pages
    doc/man/man1/           Man(1) pages
    doc/man/man5/           Man(5) pages
    patches/                Common patches
    po/                     Translations
    shell-completion/       Base directory for auto completion scripts
    shell-completion/bash/  Bash auto completion scripts
    src/                    Source tree
    src/firewall/           Import tree for the sevice and all applications
    src/icons/              Icons in the sizes: 16, 22, 24, 32, 48 and scalable
    src/tests/              Test scripts
