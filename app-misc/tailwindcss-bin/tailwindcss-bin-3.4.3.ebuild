# Copyright Paul Barker <paul@pbarker.dev>
# SPDX-License-Identifier: GPL-2.0-only

EAPI=8

DESCRIPTION="A utility-first CSS framework for rapid UI development"
HOMEPAGE="https://tailwindcss.com/"

SRC_URI="
	amd64? ( https://github.com/tailwindlabs/tailwindcss/releases/download/v${PV}/tailwindcss-linux-x64 )
	arm? ( https://github.com/tailwindlabs/tailwindcss/releases/download/v${PV}/tailwindcss-linux-armv7 )
	arm64? ( https://github.com/tailwindlabs/tailwindcss/releases/download/v${PV}/tailwindcss-linux-arm64 )
"
S="${WORKDIR}"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64"
RESTRICT="strip"

src_install() {
	use amd64 && newbin "${DISTDIR}/tailwindcss-linux-x64" tailwindcss
	use arm && newbin "${DISTDIR}/tailwindcss-linux-armv7" tailwindcss
	use arm64 && newbin "${DISTDIR}/tailwindcss-linux-arm64" tailwindcss
}
