import sys
import random
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine, qmlRegisterType
from PyQt5.QtCore import QUrl, pyqtProperty,QObject
from PyQt5.QtQuick import QQuickView

import resource_rc
# The type to be registered with QML. It is a sub-class of QObject

class Animation(QObject):
    def __init__(self, parent=None):
        super().__init__(parent)
        self._xcoord = 0
        self._ycoord = 0
        self.allpositions = [{'x': 231, 'y': 370},{'x': 231, 'y': 0}]
        self.counter = 0
    
    @pyqtProperty(int)
    def xcoord(self):
        return self._xcoord

    @pyqtProperty(int)
    def ycoord(self):
        return self._ycoord

    @xcoord.setter
    def xcoord(self, xcoord):
        self._xcoord = xcoord

    @ycoord.setter
    def ycoord(self, ycoord):
        self._ycoord = ycoord

    def generation(self):
        try:
            position = self.allpositions[self.counter]
            self.counter += 1
        except:
            position = self.allpositions[1]
        return position
    


if __name__ == "__main__":
    # Create the application
    app = QGuiApplication(sys.argv)
    # Create a QML engine
    engine = QQmlApplicationEngine()
    # create an instance of the animation to be performed
    move = Animation()
    position = generation()
    move.ycoord = position['y']
    move.xcoord = position['x']
    engine.rootContext().setContextProperty("movement", move)
    engine.load(QUrl("main.qml"))
    if not engine.rootObjects():
        sys.exit(-1)
    # Execute the main Qt loop
    sys.exit(app.exec_())