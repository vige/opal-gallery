# This file is part of harbour-opal-gallery.
# SPDX-FileCopyrightText: 2020-2024 Mirian Margiani
# SPDX-License-Identifier: GPL-3.0-or-later

# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = harbour-opal-gallery
CONFIG += sailfishapp

# ---
# Opal gallery configuration
# ---

SOURCES += src/harbour-opal-gallery.cpp

DISTFILES += qml/harbour-opal-gallery.qml \
    qml/cover/CoverPage.qml \
    qml/pages/MainPage.qml \
    qml/pages/AboutPage.qml \
    qml/pages/AboutModulePageBase.qml \
    qml/module-pages/About.qml \
    qml/module-pages/EmptyDummyPage.qml \
    qml/module-pages/*/*.* \
    qml/modules-devel/*/*.* \
    qml/modules-devel/*/*/*.* \
    qml/modules/Opal/*.* \
    qml/modules/Opal/*/*.* \
    qml/modules/Opal/*/*/*.* \
    qml/common/*/*/*.* \
    rpm/harbour-opal-gallery.changes.in \
    rpm/harbour-opal-gallery.changes.run.in \
    rpm/harbour-opal-gallery.spec \
    rpm/harbour-opal-gallery.yaml \
    translations/*.ts \
    harbour-opal-gallery.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n
TRANSLATIONS += translations/harbour-opal-gallery-*.ts

# Note: version number is configured in yaml
DEFINES += APP_VERSION=\\\"$$VERSION\\\"
DEFINES += APP_RELEASE=\\\"$$RELEASE\\\"
include(libs/opal-cached-defines.pri)

QML_IMPORT_PATH += "qml/modules"
QML_IMPORT_PATH += "qml/common"
