# Distributed under the terms of the GNU General Public License v2

EAPI=7

SRC_URI="https://github.com/commanderx16/x16-emulator/releases/download/r${PV}/x16emu_linux-r${PV}.zip -> ${P}.zip"
DESCRIPTION="Emulator for the Commander X16 computer (binary)"
HOMEPAGE="https://github.com/commanderx16/x16-emulator"
LICENSE="x16-rom"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="bindist mirror test"
IUSE="doc"

# TODO
