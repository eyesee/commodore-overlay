# Copyright 2020 Gentoo Authors
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

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

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

pkg_postinst() {
	elog "The Commander X16 emulator requires a ROM to run. The location can"
	elog "be specified using the -rom /path/to/rom.bin option."
	elog
	elog "Build instructions are available in the README of the x16-rom"
	elog "repository. The assembler is available as dev-embedded/cc65 in this"
	elog "overlay. If anyone can think of a good category and directory to put"
	elog "the ROM, let me know and I'll package it so this won't be necessary."
	elog
	elog "https://github.com/commanderx16/x16-rom/blob/master/README.md#building-the-rom"
}
