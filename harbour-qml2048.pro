# Add more folders to ship with the application, here

TARGET = harbour-qml2048

CONFIG += sailfishapp


# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp


OTHER_FILES += \
    harbour-qml2048.desktop \
    rpm/qml2048.yaml \

lupdate_only{
    SOURCES += qml/*.qml \
    SOURCES += qml/cover/*.qml \
    SOURCES += qml/pages/*.qml \
    SOURCES += qml/pages/*.js
}
