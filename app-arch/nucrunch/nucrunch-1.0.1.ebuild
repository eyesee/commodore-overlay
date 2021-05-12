# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION=""
HOMEPAGE="https://csdb.dk/release/?id=167305"
SRC_URI="http://csdb.dk/getinternalfile.php/170403/nucrunch-1.0.1.tgz"

# TODO

# Building nucrunch requires
# - rust 1.26 or later, from rust-lang.org    Not compatible with 1.25 or earlier.
# - ca65, from https://cc65.github.io/cc65/.  Tested against V2.13.9 and V2.17
#
# The test suite also requires
# - xa65       (from http://www.floodgap.com/retrotech/xa/)
# - Python     (tested against 2.7 and 3.6)
#
# Note that xa65 is only needed if you want to test the xa translations
# of the decrunch routines.
