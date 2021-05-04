# Distributed under the terms of the GNU General Public License v2

EAPI=7

if [[ ${PV} == "9999" ]]; then
    inherit subversion
    ESVN_REPO_URI="https://svn.code.sf.net/p/acme-crossass/code-0/trunk"
    ESVN_PROJECT="${PN}"
else
    SRC_URI="SRC_URI="mirror://sourceforge/${PN}/${P}.tgz""
    KEYWORDS="~amd64"
fi

DESCRIPTION="Multi-platform cross assembler for 6502/6510/65816 CPU"
HOMEPAGE="https://sourceforge.net/projects/acme-crossass/"
LICENSE="GPL-2+"
SLOT="0"
IUSE="doc"

DEPEND=""

# TODO
