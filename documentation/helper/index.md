---
layout: default
title: "Helper"
parent: "Documentation"
nav_order: 8
---

A firewalld helper defines the configuration that are needed to be able to use a netfilter connection tracking helper if automatic helper assignment is turned off, which is then the secure use of connection tracking helpers.

This can be achieved with the kernel default setting for `nf_conntrack_helper`, a sysctl setting of `net.netfilter.nf_conntrack_helper` or with the `AutomaticHelpers` setting in the `firewalld.conf` file.

A firewalld helper can be a list of local ports, a kernel module and a family definition.

Here is more information about helpers:

{:toc}

Further helper configuration options and generic information about helpers are also described in the [firewalld.helper](../man-pages/firewalld.helper.html) man page.
