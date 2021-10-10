# Add more folders to ship with the application, here

TARGET = harbour-qml2048

CONFIG += sailfishapp


# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp


OTHER_FILES += \
    harbour-qml2048.desktop \

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

lupdate_only{
    SOURCES += qml/*.qml \
    SOURCES += qml/cover/*.qml \
    SOURCES += qml/pages/*.qml \
    SOURCES += qml/pages/*.js
}

DISTFILES += \
    rpm/harbour-qml2048.yaml \
    rpm/harbour-qml2048.spec
