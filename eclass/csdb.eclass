# Distributed under the terms of the GNU General Public License v2

# @ECLASS: csdb.eclass
# @MAINTAINER:
# eyesee@foobarlab.net
# @SUPPORTED_EAPIS: 7
# @BLURB: Provide various functions for using CSDB
# @DESCRIPTION:
# Purpose: Provide various functions for using CSDB
# (Commodore Scene Database).

case "${EAPI:-0}" in
    0|1|2|3|4|5|6)
        die "EAPI='${EAPI}' is not supported anymore"
        ;;
    *)
        ;;
esac

# TODO function to download a release (optional: all files)
# TODO function to filter releases
