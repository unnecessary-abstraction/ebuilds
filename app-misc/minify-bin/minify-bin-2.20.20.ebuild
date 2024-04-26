# Copyright Paul Barker <paul@pbarker.dev>
# SPDX-License-Identifier: GPL-2.0-only

EAPI=8

DESCRIPTION="Go minifiers for web formats"
HOMEPAGE="https://go.tacodewolff.nl/minify"

SRC_URI="
	amd64? ( https://github.com/tdewolff/minify/releases/download/v${PV}/minify_linux_amd64.tar.gz )
	arm64? ( https://github.com/tdewolff/minify/releases/download/v${PV}/minify_linux_arm64.tar.gz )
"
S="${WORKDIR}"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
RESTRICT="strip"

src_install() {
	dobin minify
}
