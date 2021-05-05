# Distributed under the terms of the GNU General Public License v2

EAPI=7

if [[ ${PV} != *9999* ]]; then
    SRC_URI="https://github.com/commanderx16/x16-rom/archive/r${PV}.tar.gz  -> ${P}.tar.gz"
    KEYWORDS="~amd64"
else
    inherit git-r3
    EGIT_REPO_URI="https://github.com/commanderx16/x16-rom.git"
fi

DESCRIPTION="ROM file for the Commander X16 Emulator"
HOMEPAGE="https://github.com/commanderx16/x16-rom"
LICENSE="x16-rom"
SLOT="0"

RESTRICT="bindist mirror test"

BDEPEND="dev-embedded/cc65"

src_unpack() {
    if [[ ${PV} != *9999* ]]; then
        default
        mv "${WORKDIR}/${PN}-r${PV}" "${S}"
    else
        git-r3_src_unpack
    fi
}

src_install() {
    # TODO better install to separate x16-emulator install dir?
    dobin "${S}/build/x16/rom.bin"
}
