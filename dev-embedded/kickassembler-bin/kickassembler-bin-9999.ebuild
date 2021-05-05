# Distributed under the terms of the GNU General Public License v2

EAPI=7

if [[ ${PV} != *9999* ]]; then
    SRC_URI="http://www.theweb.dk/KickAssembler/KickAssembler${PV}.zip"
else
    SRC_URI="http://www.theweb.dk/KickAssembler/KickAssembler.zip"
fi

DESCRIPTION="An advanced MOS 65xx assembler combined with a Java Script like script language"
HOMEPAGE="http://www.theweb.dk/KickAssembler/"

KEYWORDS="~amd64 ~x86"
SLOT="0"
LICENSE="all-rights-reserved"

DEPEND=""
RDEPEND=">=virtual/jre-1.8"

# TODO see: https://github.com/aur-archive/kickassembler
# TODO see: https://github.com/c64lib/asm-ka (unofficial versioned mirror)
