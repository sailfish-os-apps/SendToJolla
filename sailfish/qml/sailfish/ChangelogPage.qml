/*
  Copyright (C) 2015 Michal Kosciesza <michal@mkiol.net>

  This file is part of SendToPhone application.

  This Source Code Form is subject to the terms of
  the Mozilla Public License, v.2.0. If a copy of
  the MPL was not distributed with this file, You can
  obtain one at http://mozilla.org/MPL/2.0/.
*/

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: root

    SilicaListView {
        anchors.fill: parent

        header: PageHeader {
            title: qsTr("Changelog")
        }

        model: VisualItemModel {

            SectionHeader {
                text: qsTr("Version %1").arg("2.1")
            }

            LogItem {
                title: 'Contacts'
                description: "Provides contacts management functions. It allows to add new, delete or edit contacts. Due to Jolla Store constraints, this feature is only available in OpenRepos package."
            }

            LogItem {
                title: 'Proxy connection mode'
                description: "Enables connection when phone and browser are not in the same local network. To make it possible, simple `proxy.php` script has to be deployed on external WWW server."
            }

            LogItem {
                title: 'End-to-end encryption'
                description: "Data transfer between server and client app (e.g. web browser) can be encrypted. This fetaure especially makes sense in the case of use Proxy connection mode without SSL protection."
            }

            SectionHeader {
                text: qsTr("Version %1").arg("2.0")
            }

            LogItem {
                title: 'Web-based client'
                description: "This is an alternative way to use Send to Phone, especially for those who don't use Firefox. To open Web client, go to 'Server URL' address in your favorite browser."
            }

            LogItem {
                title: 'Notes'
                description: "Provides simple notes management functions. It allows to save text as a new note, delete or edit existing note.";
            }

            LogItem {
                title: 'Bookmarks'
                description: "Provides the possibility to add new, delete or edit bookmarks of the native SailfishOS browser."
            }

            Item {
                height: Theme.paddingMedium
            }

        }

        VerticalScrollDecorator {}
    }

}
