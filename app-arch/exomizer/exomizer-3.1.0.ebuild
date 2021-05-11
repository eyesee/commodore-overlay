# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="8-bit CPU oriented compression tools"
HOMEPAGE="https://bitbucket.org/magli143/exomizer/wiki/Home"
SRC_URI="https://bitbucket.org/magli143/exomizer/wiki/downloads/${P}.zip"

LICENSE="exomizer"
SLOT="3/3.1"
KEYWORDS="~*"
IUSE=""
RESTRICT="bindist mirror test"
BDEPEND="app-arch/unzip"
QA_PRESTRIPPED="/usr/bin/exomizer /usr/bin/exobasic"

S="$WORKDIR"/src

src_install() {
    dobin exomizer exobasic
    local d
    for d in changelog.txt exo20info.txt exo31info.txt exobasic10b2.txt; do
        [[ -s "${WORKDIR}/${d}" ]] && dodoc "${WORKDIR}/${d}"
    done
    # TODO copy examples
}
