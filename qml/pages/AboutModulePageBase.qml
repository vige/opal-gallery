/*
 * This file is part of harbour-opal.
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2020 Mirian Margiani
 */

import QtQuick 2.0
import Sailfish.Silica 1.0
import Opal.About 1.0

AboutPageBase {
    id: page
    allowedOrientations: Orientation.All
    iconSource: Qt.resolvedUrl("../images/harbour-opal.png")
    versionNumber: APP_VERSION
    releaseNumber: APP_RELEASE
    licenses: License { spdxId: mainLicenseSpdx }

    // from module
    appName: ""
    description: ""
    author: ""
    property string mainLicenseSpdx: ""
    sourcesUrl: ""
}
