# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit toolchain-funcs

DESCRIPTION="High-speed, two-pass portable 6502 cross-assembler"
HOMEPAGE="https://www.floodgap.com/retrotech/xa/"
SRC_URI="https://www.floodgap.com/retrotech/${PN}/dists/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

PATCHES=(
	"${FILESDIR}"/${PN}-2.3.10-Makefile.patch
	"${FILESDIR}"/${PN}-2.3.10-fix-gcc10-fno-common.patch
)

src_configure() {
	tc-export CC
}

src_test() {
	emake -j1 test
}

src_install() {
	emake DESTDIR="${ED}"/usr install
	einstalldocs
}
