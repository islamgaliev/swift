import UIKit


protocol Car {
    
    var label: String {get}
    var Color: String {get set}
    var type: String {get set}
    var speed: Int {get}
    
    func getTypeCar()
    func getSpeedCar()
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
    
    
}

extension CarType {
    
}

let car1 = CarType()
car1.getSpeedCar()
car1.getTypeCar()



