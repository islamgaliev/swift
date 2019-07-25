import UIKit

enum MotorStatus {
    case start, stop
}

enum WindowStatus {
    case open, close
}

enum baggageStatus {
    case full, empty
}

struct AnyCar {
    let label: String
    let mod: String
    var color: String
    
    mutating func viewColor(col:String) {
        switch col {
        case "yellow":
            self.color = "yellow"
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "blue":
            self.color = "blue"
        default:
            print("Ошибка ввода")
        }
    }
    let born: Int
    var bagState: Double {
        willSet {
            if (baggageStatus == .empty) && (bagState > 0) && (bagState != 0) && (newValue < bagState){
                let space = bagState - newValue
                print ("\(label) багажник свободен: \(space)")
            } else { print("ошибка ввода или \(label) багажник полный.")}
        }
    }
    
    var MotorStatus: MotorStatus {
        willSet {
            if newValue == .start {
                print("\(label) Двигатель запущен")
            } else {print("\(label) Двигатель заглушен")}
        }
    }
    
    var WindowStatus: WindowStatus {
        willSet {
            if newValue == .open {
                print("\(label) Окно открыто")
            } else {print("\(label) Окно закрыто")}
        }
    }
    
    var motorStatus: MotorStatus
    mutating func MotorStop(){
        self.MotorStatus = .stop
        print("\(label) Двигатель заглушен")
    }
    

}

struct AnyTruck {
    let label: String
    var statusmotor: MotorStatus
    var statuswindow: WindowStatus
    var color: String
    
    mutating func ViewColor(col:String) {
        switch col {
        case "yellow":
            self.color = "yellow"
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        default:
            print("Ошибка ввода")
        }
    }
    
    let born: Int
    var baggageState: Double {
        willSet {
            if (BaggageStatus == .empty && baggageState > 0 && baggageState != 0 && newValue < baggageState){
                let space = baggageState - newValue
                print ("\(label) багажник свободен: \(space)")
            } else { print("ошибка ввода или \(label) багажник полный.")}
        }
    }
    
    var MotorStatus: MotorStatus {
        willSet {
            if newValue == .start {
                print("\(label) Двигатель запущен")
            } else {print("\(label) Двигатель заглушен")}
        }
    }
    
    var WindowStatus: WindowStatus {
        willSet {
            if newValue == .open {
                print("\(label) Окно открыто")
            } else {print("\(label) Окно закрыто")}
        }
    }
    
    var motorStatus: MotorStatus
    mutating func MotorStop(){
        self.MotorStatus = .stop
        print("\(label) Двигатель заглушен")
    }
    
    
}

var car1 = AnyCar(label: "BMW", born: 2018, color: "Clear", baggageState: 200.0, MotorStatus: .stop, WindowStatus: .close, BaggageStatus: .empty)
