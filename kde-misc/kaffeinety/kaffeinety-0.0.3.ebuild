# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit kde4-base

DESCRIPTION="A application to temporarity prevents dim screen action for KDE environment"
HOMEPAGE="http://kde-apps.org/content/show.php/KaffeineTY?content=159860"
SRC_URI="http://kde-apps.org/CONTENT/content-files/159860-${P}.tar.gz"

LICENSE="GPL"
SLOT="4"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/${PN}"
