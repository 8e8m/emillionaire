# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGIT_REPO_URI="https://github.com/8e8m/bake.git"
inherit git-r3

DESCRIPTION="A tool to run embedded scripts."

LICENSE="CC0"
SLOT="0"

IUSE="man"

DEPEND="sys-devel/flex"

src_install() {
    TARGET="${D}/usr/local" sh install.sh

    if use man; then
        doman bake.1
    fi
}
