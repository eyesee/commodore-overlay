Commodore Overlay
=================

This is my personal overlay to use for Commodore 64 development and demomaking. The overlay ebuilds are made for Funtoo Linux, but can possibly work on any other Gentoo based Linux.

Usage
-----

Checkout the sources to ``/var/git/overlay/commodore`` and add the file
``/etc/portage/repos.conf/commodore`` with the following contents::

  [DEFAULT]
  main-repo = core-kit
  
  [commodore]
  location = /var/git/overlay/commodore
  auto-sync = no
  priority = 10

Doing ``ego sync`` afterwards will update your portage tree and make the ebuilds available.

To remove this overlay just remove above files and folders and do ``ego sync`` again.


=================================
How to Contribute to this Overlay
=================================

:author: Martin Eisenbarth
:contact: eyesee@foobarlab.net
:languages: English, German, French

Greetings GitHub Users!
=======================

To contribute bug reports for this overlay, you can open up a GitHub issue or send
me a pull request.

If you are using ebuilds in this overlay as part of Funtoo Linux (because they are
merged into the main Funtoo Linux Portage tree, for example,) then
please also open an issue at `bugs.funtoo.org`_.
