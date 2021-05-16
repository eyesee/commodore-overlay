# Distributed under the terms of the GNU General Public License v2

# @ECLASS: hvsc.eclass
# @MAINTAINER:
# eyesee@foobarlab.net
# @SUPPORTED_EAPIS: 7
# @BLURB: Provide various functions for using HVSC
# @DESCRIPTION:
# Purpose: Provide various functions for using HVSC
# (High Voltage Sid Collection).

case "${EAPI:-0}" in
    0|1|2|3|4|5|6)
        die "EAPI='${EAPI}' is not supported anymore"
        ;;
    *)
        ;;
esac

# see: https://hvsc.c64.org/
