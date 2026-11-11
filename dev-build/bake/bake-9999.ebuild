# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="A tool to run embedded scripts."
HOMEPAGE="https://github.com/8e8m/bake"
EGIT_REPO_URI="https://github.com/8e8m/bake.git"

LICENSE="CC0-1.0"
SLOT="0"
IUSE="man"
BDEPEND="sys-devel/flex"

if [[ ${PV} != 9999 ]]; then
	EGIT_COMMIT="v${PV}"
	KEYWORDS="amd64 x86"
fi

src_compile() {
	./awake bake.l || die
}

src_install() {
	TARGET="${ED}/usr" NOMAN=1 sh install.sh --prebuilt || die
	rm -f "${ED}"/usr/share/man/man1/bake.1.gz
	use man && doman bake.1
}
