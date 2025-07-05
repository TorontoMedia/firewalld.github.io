---
layout: default
title: "IPSet"
parent: "Documentation"
nav_order: 7
---

An ipset can be used to group several IP or MAC addresses together. IP addresses in an ipset must be either IPv4 or IPv6. This is defined by the family setting of the ipset. It can be either inet (the default) or inet6.

With the use of ipsets, the number of rules for allow or block, for example is reduced to only a few rules for a long list of addresses in the ipset. The number of needed rules depends on the use case.

Here is more information about IPSets:

{:toc}

Further IPSet configuration options and generic information about ipsets are also described in the [firewalld.ipset](../man-pages/firewalld.ipset.html) man page.
