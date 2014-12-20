# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-themes/audacious-themes/audacious-themes-0.0.4.ebuild,v 1.8 2010/02/24 14:55:36 ssuominen Exp $

DESCRIPTION="Oxygen theme for Filezilla"
HOMEPAGE="http://kde-look.org/content/show.php/?content=141546"
SRC_URI="http://kde-look.org/CONTENT/content-files/141546-filezilla-oxygen-theme.tar.gz"

SLOT="0"
LICENSE="freedist"
KEYWORDS="alpha amd64 ppc ppc64 sparc x86 x86-fbsd"

IUSE=""

DEPEND="net-ftp/filezilla"
RDEPEND="$DEPEND"

src_compile() {
	einfo "Nothing to compile"
}

src_install () {
	dodir /usr/share/filezilla/resources/oxygen/16x16
	insinto /usr/share/filezilla/resources/oxygen/16x16
	doins oxygen/16x16/*.png
	insinto /usr/share/filezilla/resources/oxygen
	doins oxygen/theme.xml
}
