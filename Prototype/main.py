import sys
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import QUrl
from PyQt5.QtQuick import QQuickView

import resource_rc
if __name__ == "__main__":
    # Create the application
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    engine.load(QUrl("main.qml"))
    if not engine.rootObjects():
        sys.exit(-1)
    # Execute the main Qt loop
    sys.exit(app.exec_())