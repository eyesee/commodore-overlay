# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="8-bit CPU oriented compression tools"
HOMEPAGE="https://bitbucket.org/magli143/exomizer/wiki/Home"
SRC_URI="https://bitbucket.org/magli143/exomizer/wiki/downloads/${P}.zip"

LICENSE="exomizer"
SLOT="1"
KEYWORDS="~*"
IUSE=""
RESTRICT="bindist mirror test"
BDEPEND="app-arch/unzip"
QA_PRESTRIPPED="/usr/bin/exomizer /usr/bin/exobasic"

src_unpack() {
    default
    unzip exomizer115src.zip || die
    mkdir -p "${S}" || die
    mv src "${S}"/ || die
}

src_prepare() {
    default
    sed -i 's/mcpu=i686/mtune=generic \-march=x86-64/g' src/Makefile || die
}

src_compile() {
    cd "${S}"/src && emake || die
}

src_install() {
    dobin "src/exomizer"
    dobin "src/exobasic"
    dodoc ${WORKDIR}/exomizer115.txt ${WORKDIR}/exobasic10b2.txt
    # TODO copy examples
}
