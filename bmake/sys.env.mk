# $Id: sys.env.mk,v 0.1 2015/09/01 16:22:32 jav Exp $
#
# 	@(#) Copyright (c) 2015, John Vogel
#
# 	This file is provided in the hope that it will
# 	be of use. There is absolutely NO WARRANTY.
# 	Permission to copy, redistribute or otherwise
# 	use this file is hereby granted provided that
# 	the above copyright notice and this notice are
# 	left intatct.
#
# 	Please send copies of changes and bug-fixes to:
# 	jvogel4@stny.rr.com
#

# This file, sys.env.mk, will be included by sys.mk.
# The idea is that these variables and their values
# are just defaults. They can be overridden at any
# point by redefining any of them in your local
# makefiles for your project.

.if ${.MAKE.LEVEL:U1} == 0

SLACK_VAR_LIST = \
	ROOT_GROUP \
	BINGRP \
	BINOWN \
	BINMODE \
	NOBINMODE \
	MANTARGET \
	MANDIR \
	LIBDIR \
	SHLIBDIR \
	SHLINKDIR \
	LINTLIBDIR \
	DOCDIR \
	NLSDIR \
	KMODDIR \
	MK_GPROF \
	MK_META_MODE \
	MK_LIBTOOL \
	MK_ARCHIVE \
	MK_LINT \
	MK_DPADD_MK \
	MK_AUTODEP \
	MK_INSTALL_AS_USER \
	MK_PIC \
	MK_LINKLIB \
	MK_PICINSTALL \
	MK_PROFILE \
	MK_OBJ \
	MK_OBJDIRS \
	MK_AUTO_OBJ \
	MK_SHARE \
	MK_MAN \
	MK_CATPAGES \
	MK_INFO \
	MK_NLS \
	MK_DOC \


# Slackware overrides for own.mk
ROOT_GROUP?=	root
BINGRP?=	${ROOT_GROUP}
BINOWN?=	root
BINMODE?=	755
NOBINMODE?=	644

MANTARGET?=	man
MANDIR?=	${prefix}/man/${MANTARGET}

LIBDIR?=	${libprefix}/lib${LIBDIRSUFFIX}
SHLIBDIR?=	${libprefix}/lib${LIBDIRSUFFIX}

SHLINKDIR?=	/lib${LIBDIRSUFFIX}
LINTLIBDIR?=	${libprefix}/lib${LIBDIRSUFFIX}/lint

DOCDIR?=	${prefix}/doc
NLSDIR?=	${prefix}/lib${LIBDIRSUFFIX}/locale
KMODDIR?=	/lib/modules

# referenced in prog.mk
MK_GPROF=	no

# referenced in lib.mk
MK_META_MODE=	no
MK_LIBTOOL=	no
MK_ARCHIVE=	no
MK_LINT=	no
# also referenced in prog.mk
MK_DPADD_MK=	no

# referenced in dep.mk
MK_AUTODEP=	no

# referenced in own.mk
MK_INSTALL_AS_USER=no

# also referenced in lib.mk
MK_PIC=		yes
MK_LINKLIB=	yes

MK_PICINSTALL=	yes
MK_PROFILE=	no

MK_OBJ=		yes
# also referenced in obj.mk
MK_OBJDIRS=	yes
MK_AUTO_OBJ=	no

MK_SHARE=	yes
# also referenced in lib.mk and prog.mk
MK_MAN=		yes
MK_CATPAGES=	no
MK_INFO=	yes
# alse referenced in lib.mk and prog.mk
MK_NLS=		yes
# also referenced in doc.mk
MK_DOC=		yes

.export ${SLACK_VAR_LIST}
#.for v in ${SLACK_VAR_LIST}
#.export ${v}
#.endfor

.endif
