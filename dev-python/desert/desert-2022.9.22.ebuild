# Copyright Paul Barker <paul@pbarker.dev>
# SPDX-License-Identifier: GPL-2.0-only

EAPI=8

PYTHON_COMPAT=( python3_{8..12} )
inherit distutils-r1 pypi

DESCRIPTION="Deserialize to objects while staying DRY"
HOMEPAGE="https://desert.readthedocs.io/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

RDEPEND="
        dev-python/marshmallow
        dev-python/attrs
        dev-python/typing-inspect
        "
