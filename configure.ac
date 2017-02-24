dnl required version of autoconf
AC_PREREQ([2.53])

dnl TODO: fill in your package name and package version here
AC_INIT([libshairport],[1.0.0])


AC_CONFIG_SRCDIR([src])
AC_CONFIG_HEADERS([config.h])

dnl required version of automake
AM_INIT_AUTOMAKE([1.10])

dnl enable mainainer mode by default
AM_MAINTAINER_MODE([enable])

dnl check for tools (compiler etc.)
AC_PROG_CC

dnl required version of libtool
LT_PREREQ([2.2.6])
LT_INIT

# pkg-config
PKG_PROG_PKG_CONFIG

# Check whether pkg-config supports Requires.private
if ! $PKG_CONFIG --atleast-pkgconfig-version 0.22; then
   AC_MSG_ERROR([pkg-config >= 0.22 is required])
fi

### Checks for libraries
libshairport_requirements_cflags=""
libshairport_requirements_libs=""
libshairport_requirements_pc="libssl ao"


PKG_CHECK_MODULES([LIBSHAIRPORT], [${libshairport_requirements_pc}])

LIBSHAIRPORT_LIBS="${LIBSHAIRPORT_LIBS} ${libshairport_requirements_libs}"
LIBSHAIRPORT_CFLAGS="${LIBSHAIRPORT_CFLAGS} ${libshairport_requirements_cflags}"

dnl check if compiler understands -Wall (if yes, add -Wall to GST_AIRPLAY_CFLAGS)
AC_MSG_CHECKING([to see if compiler understands -Wall])
save_CFLAGS="$CFLAGS"
CFLAGS="$CFLAGS -Wall"
AC_COMPILE_IFELSE([AC_LANG_PROGRAM([ ], [ ])], [
  GST_AIRPLAY_CFLAGS="$LIBSHAIRPORT_CFLAGS -Wall"
  AC_MSG_RESULT([yes])
], [
  AC_MSG_RESULT([no])
])



AC_CONFIG_FILES([Makefile
                src/Makefile
                libshairport.pc
                ])
AC_OUTPUT

