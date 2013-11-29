EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit eutils git-r3 autotools python-r1

DESCRIPTION="An efficient theorem prover"
HOMEPAGE="http://z3.codeplex.com/"
EGIT_REPO_URI="https://git01.codeplex.com/z3"
EGIT_NONSHALLOW=1
EGIT_COMMIT="a60b53bfd"
KEYWORDS="~amd64 ~x86"

SLOT="0"
IUSE=""
# A new curl is needed because codeplex has a bug and early version of libcurl
# will cause a failed git clone.
DEPEND=">=net-misc/curl-7.33"
RDEPEND=""

src_configure() {
	./configure
	python2 scripts/mk_make.py
}

src_compile() {
	emake --directory="build"
}

src_install() {
	doheader src/api/z3*.h
	doheader src/api/c++/z3*.h
	dolib.so build/*.so
	dobin build/z3

	python_foreach_impl python_domodule src/api/python/*.py
}
