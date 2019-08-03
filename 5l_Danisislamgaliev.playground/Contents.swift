import UIKit

enum ActWithCar {
    case opendoor, closedoor, openwindow, closewindow, startenine, stopengine
}


protocol Car {
    
    var label: String {get}
    var Color: String {get set}
    var type: String {get set}
    var speed: Int {get}
    
    //действия с автомобилем
    
    func getTypeCar()
    func getSpeedCar()
    func getColorCar()
}

extension Car {
    func Door(){
        ActWithCar = .opendoor
    }
}


class CarType: Car {
    
    
    var label: String = "BMW"
    var Color: String = "black"
    var type: String = "Big"
    var speed: Int = 300
    
    
    func getTypeCar() {
        print("тип машины: \(type)")
    }
    
    func getSpeedCar() {
        print("скорость машины: \(speed)")
    }
    
    func getColorCar() {
        print("Цвет машины: \(Color)")
    }
    
    
}



let car1 = CarType()
car1.getSpeedCar()
car1.getTypeCar()
car1.getColorCar()



