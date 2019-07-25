import UIKit

enum MotorStatus {
    case start, stop
}

enum WindowStatus {
    case open, close
}

enum BaggageStatus {
    case full, empty
}

struct AnyCar {
    let label: String
    let mod: String
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
            if (BaggageStatus == .empty) && (baggageState > 0) && (baggageState != 0) && (newValue < baggageState){
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
    
    var BaggageStatus: BaggageStatus
    mutating func emptyBaggage() {
        self.BaggageStatus = .empty
        print("\(label) багажник пустой")
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
    
    var BaggageStatus: BaggageStatus
    mutating func emptyBaggage() {
        self.BaggageStatus = .empty
        print("\(label) багажник пустой")
    }
    
    
}

var auto = AnyCar(label: "BMW", mod: "M8", color: "Clear", born: 2018, baggageState: 200.0, MotorStatus: .stop, WindowStatus: .open, BaggageStatus: .empty)
var truck = AnyCar(label: "Man", mod: "9", color: "black", born: 2016, baggageState: 1000.0, MotorStatus: .start, WindowStatus: .close, BaggageStatus: .full)

auto.baggageState = 100.0
auto.MotorStatus = .start
auto.WindowStatus = .close
auto.ViewColor(col: "black")
auto.emptyBaggage()

truck.baggageState = 840.0
truck.MotorStatus = .stop
truck.WindowStatus = .open
truck.ViewColor(col: "yellow")
truck.emptyBaggage()


