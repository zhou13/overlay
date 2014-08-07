# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
CMAKE_BUILD_TYPE=Release
inherit cmake-utils git-2

DESCRIPTION="Robomongo — is a shell-centric crossplatform MongoDB management
tool."
HOMEPAGE="http://www.robomongo.org/"
#SRC_URI="https://github.com/paralect/robomongo/archive/v0.7.1.tar.gz"
EGIT_REPO_URI="https://github.com/paralect/robomongo"
#EGIT_COMMIT="7ba7ca59018e4e8717e59856e86254fe6fd38bfa"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-qt/qtcore
		dev-qt/qtgui
		dev-qt/qtdbus
		dev-qt/qtprintsupport"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${P}

scr_configure() {
        local mycmakeargs=(
			-DOS_ARC=64
        )
        cmake-utils_src_configure
}
