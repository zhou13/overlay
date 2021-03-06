# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{3_2,3_3,3_4} )

inherit distutils-r1

MY_PN="Attic"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Attic is a deduplicating backup program written in Python"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"
HOMEPAGE="https://pythonhosted.org/Attic/index.html"

IUSE=""
SLOT="0"
LICENSE="LGPL-2"
KEYWORDS="~x86 ~amd64"

RDEPEND="
	dev-python/msgpack
	dev-python/llfuse
	dev-python/pyopenssl
	"
DEPEND="${RDEPEND} dev-lang/python"

S="${WORKDIR}/${MY_P}"
