# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Content-addressed, suffix-chaining build system written in Tcl"
HOMEPAGE="https://github.com/8e8m/mitosis"
EGIT_REPO_URI="https://github.com/8e8m/mitosis.git"

LICENSE="CC0-1.0"
SLOT="0"
IUSE="man"

# Mitosis invokes Tcl at runtime and uses sha256sum and nproc from coreutils.
RDEPEND="
	>=dev-lang/tcl-8.6
	sys-apps/coreutils
"

if [[ ${PV} != 9999 ]]; then
	EGIT_COMMIT="refs/tags/v${PV}"
	KEYWORDS="amd64 x86"
fi

src_install() {
	newbin mitosis.tcl mitosis

	insinto /usr/share/mitosis/celmag
	doins -r celmag/*

	if use man; then
		doman mitosis.1
	fi
}
