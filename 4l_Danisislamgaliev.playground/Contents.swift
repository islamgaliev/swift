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

class Car {
    var MotorStatus: MotorStatus
    var WindowStatus: WindowStatus
    var BaggageStatus: BaggageStatus
    var mp3: Bool
    var transmission: String
    var color: UIColor
    
    init(MotorStatus: MotorStatus, WindowStatus: WindowStatus, BaggageStatus: BaggageStatus, mp3: Bool, transmission: String, color: UIColor) {
        self.MotorStatus = MotorStatus
        self.WindowStatus = WindowStatus
        self.BaggageStatus = BaggageStatus
        self.mp3 = mp3
        self.transmission = transmission
        self.color = color
    }
    
    func setEngine() {
        //
    }
    
    
}



