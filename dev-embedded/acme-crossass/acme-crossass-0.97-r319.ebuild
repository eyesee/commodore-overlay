# Distributed under the terms of the GNU General Public License v2

EAPI=7

if [[ ${PV} == "9999" ]]; then
    ESVN_REPO_URI="https://svn.code.sf.net/p/acme-crossass/code-0/trunk/"
    ESVN_PROJECT="${PN}-svn"
    ESVN_OPTIONS=""
    inherit subversion
else
    # TODO checkout specific revision for given version (e.g. 0.97 = r319)
    ESVN_REPO_URI="https://svn.code.sf.net/p/acme-crossass/code-0/trunk/"
    
    # for 0.97-r319:
    ESVN_PROJECT="${PN}-r319"
    ESVN_REVISION="319"
    
    inherit subversion
    
    # TODO alternative download from sourceforge as snapshot: e.g. acme-crossass-code-0-r319-trunk.zip
    # from: https://sourceforge.net/code-snapshots/svn/a/ac/acme-crossass/code-0/acme-crossass-code-0-r319-trunk.zip

fi

DESCRIPTION="Multi-platform cross assembler for 6502/6510/65816 CPU"
HOMEPAGE="https://sourceforge.net/projects/acme-crossass/"
LICENSE="GPL-2+"
KEYWORDS="~amd64"
SLOT="0"
IUSE="doc"
RESTRICT="test"

DEPEND=""

#src_prepare() {
#    default
#}

# TODO subversion.eclass bug reported as https://bugs.funtoo.org/browse/FL-8367
