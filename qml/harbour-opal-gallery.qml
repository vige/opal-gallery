/*
 * This file is part of harbour-opal-gallery.
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2020-2021 Mirian Margiani
 */

import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow
{
    id: app
    property var modules: [
        //>>> GENERATED LIST OF MODULES
        {
            title: "Opal.About",
            description: QT_TRANSLATE_NOOP("ModuleDescriptions", "This module provides <i>AboutPageBase</i> for building customizable application information pages."),
            appVersion: "0.9.1",
            mainAttributions: ['2018-2022 Mirian Margiani'],
            maintainers: ['ichthyosaurus'],
            contributors: [],
            mainLicenseSpdx: "GPL-3.0-or-later",
            sourcesUrl: "https://github.com/Pretty-SFOS/opal-about",
            examplePage: "opal-about/About.qml"
        },
        {
            title: "Opal.TabBar",
            description: QT_TRANSLATE_NOOP("ModuleDescriptions", "This module provides a flexible docked tab bar with icons and text."),
            appVersion: "0.1.0",
            mainAttributions: ['2020-2021 Mirian Margiani'],
            maintainers: ['ichthyosaurus'],
            contributors: [],
            mainLicenseSpdx: "GPL-3.0-or-later",
            sourcesUrl: "https://github.com/Pretty-SFOS/opal-tabbar",
            examplePage: "opal-tabbar/TabBar.qml"
        }
        //<<< GENERATED LIST OF MODULES
    ]

    initialPage: Component { MainPage { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations
}
