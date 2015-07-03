# $OpenBSD: Makefile,v 1.17 2013/10/26 23:55:37 jeremy Exp $

COMMENT=	Ruby library to create XML markup and data structures

DISTNAME=	fog-json-1.0.2
CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby
BUILD_DEPENDS += ${RUN_DEPENDS}
RUN_DEPENDS +=	converters/ruby-multi_json,${MODRUBY_FLAVOR} \
		sysutils/ruby-fog-core,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=ruby gem


.include <bsd.port.mk>
