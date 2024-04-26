# Copyright Paul Barker <paul@pbarker.dev>
# SPDX-License-Identifier: GPL-2.0-only

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..12} )
inherit distutils-r1 pypi

DESCRIPTION="Mirroring tool written in Python"
HOMEPAGE="https://github.com/unnecessary-abstraction/mirrorshades"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

RDEPEND="
        dev-python/pyyaml
        dev-python/desert
        "

pkg_postinst() {
        elog "The following mirroring agents have additional dependencies which"
        elog "must be installed if you wish to use them in your configuration:"
        elog "  git:            Requires dev-vcs/git"
        elog "  github:         Requires dev-vcs/git and dev-python/PyGithub"
        elog "  gitlab:         Requires dev-vcs/git and dev-vcs/python-gitlab"
        elog "  rclone:         Requires net-misc/rclone"
}
