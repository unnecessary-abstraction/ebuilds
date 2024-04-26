# Copyright Paul Barker <paul@pbarker.dev>
# SPDX-License-Identifier: GPL-2.0-only

EAPI=8

DESCRIPTION="Go minifiers for web formats"
HOMEPAGE="https://go.tacodewolff.nl/minify"
SRC_URI="
	https://distfiles.pbarker.dev/minify/v${PV}/minify-${PV}.tar.bz2
	https://distfiles.pbarker.dev/minify/v${PV}/minify-vendor-${PV}.tar.bz2
	"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
BDEPEND="app-arch/zstd"

inherit go-module

src_compile() {
	ego build -ldflags "-s -w -X 'main.Version=v${PV}'" -trimpath -o dist/ ./cmd/minify
}

src_install() {
	dobin dist/minify
}
