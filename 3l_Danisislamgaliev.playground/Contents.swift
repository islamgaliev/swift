import UIKit


enum HondaDoorState {
    case open, close
}
enum Transmission {
    case manual, auto
}
struct Honda {
    let color: UIColor
    let mp3: Bool
    let transmission: Transmission
    var km: Double
    var doorState: HondaDoorState
}
let car1 = Honda(color: .white, mp3: true, transmission: .auto, km: 0.0, doorState: .close)
let car2 = Honda(color: .black, mp3: true, transmission: .manual, km: 120.0, doorState: .close)
let car3 = Honda(color: .red, mp3: false, transmission: .manual, km: 0.0, doorState: .open)
let car4 = Honda(color: .green, mp3: true, transmission: .auto, km: 0.0, doorState: .close)



enum BmwMotorStatus {
    case start, stop
}

enum BmwWindowStatus {
    case open, close
}

enum BaggageStatus: Double {
    case full = 34.5
    case nofull = 10.7
}

struct BmwCar {
    let label: String
    let born: Int
    let volume: Double
    var bmwstatusmotor: BmwMotorStatus
    var bmwstatuswindow: BmwWindowStatus
    var baggagestate: BaggageStatus
    
    init(label: String, born: Int, volume: Double, bmwstatusmotor: BmwMotorStatus, bmwstatuswindow: BmwWindowStatus) {
        self.label = "BMW"
        self.born = 2018
        self.volume = 44.0
        self.bmwstatusmotor = bmwstatusmotor
        self.bmwstatuswindow = bmwstatuswindow
        
    }
    
    mutating func bagState() {
        self.baggagestate = baggagestate == .full ? .nofull : .full
    }
}

