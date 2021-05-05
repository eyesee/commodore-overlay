# Distributed under the terms of the GNU General Public License v2

EAPI=7

if [[ ${PV} != *9999* ]]; then
    SRC_URI="https://github.com/commanderx16/x16-emulator/archive/r${PV}.tar.gz  -> ${P}.tar.gz"
    KEYWORDS="~amd64"
else
    inherit git-r3
    EGIT_REPO_URI="https://github.com/commanderx16/x16-emulator.git"
fi

DESCRIPTION="Emulator for the Commander X16 computer"
HOMEPAGE="https://github.com/commanderx16/x16-emulator"
LICENSE="BSD-2"
SLOT="0"

RDEPEND="=app-emulation/x16-rom-${PV}"

src_unpack() {
    if [[ ${PV} != *9999* ]]; then
        default
        mv "${WORKDIR}/${PN}-r${PV}" "${S}"
    else
        git-r3_src_unpack
    fi
}

src_install() {
    dobin "${S}/x16emu"
}
