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
IUSE="+rom"
#RESTRICT="rom? ( binutils mirror )" # needed when rom file would be included

RDEPEND="rom? ( =app-emulation/x16-rom-${PV} )"

src_unpack() {
    if [[ ${PV} != *9999* ]]; then
        default
        mv "${WORKDIR}/${PN}-r${PV}" "${S}"
    else
        git-r3_src_unpack
    fi
}

src_install() {
    # TODO install to separate dir? include rom file there?
    dobin "${S}/x16emu"
}

pkg_postinst() {
    if ! use rom ; then
        ewarn "Commander X16 emulator installed without a ROM file."
        ewarn "Please specify a location using the"
        ewarn
        ewarn "-rom /path/to/rom.bin"
        ewarn
        ewarn "option."
    fi
}
