Installation Instructions
*************************

   Copyright (C) 1994-1996, 1999-2002, 2004-2016 Free Software
Foundation, Inc.

   Copying and distribution of this file, with or without modification,
are permitted in any medium without royalty provided the copyright
notice and this notice are preserved.  This file is offered as-is,
without warranty of any kind.

Basic Installation
==================

Prerequisites:

 * python3
 * meson > 0.52
 * ninja build

First you need to configure the meson project with:

```
$ meson build
```

This will configure the project to generate the lib and the binary to demonstrate the use of the library.
Several options are available in meson_options.txt.

Then you can build the project with:

```
$ ninja -C build
```

This will generate a binary named `shairport` which you can use from `build/src/bin/shairport`

Finally you can install the package with:

```
sudo ninja -C build install
```

This will install the binaray and its library to your local prefix (/usr/local/) and a systemd service to start the daemon.
