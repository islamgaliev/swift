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

enum Pnevma {
    case up, down
}

class Car {
    var MotorStatus: MotorStatus
    var WindowStatus: WindowStatus
    var BaggageStatus: BaggageStatus
    var Pnevma: Pnevma
    var mp3: Bool
    var transmission: String
    var color: UIColor
    
    init(MotorStatus: MotorStatus, WindowStatus: WindowStatus, BaggageStatus: BaggageStatus, Pnevma: Pnevma, mp3: Bool, transmission: String, color: UIColor) {
        self.MotorStatus = MotorStatus
        self.WindowStatus = WindowStatus
        self.BaggageStatus = BaggageStatus
        self.Pnevma = Pnevma
        self.mp3 = mp3
        self.transmission = transmission
        self.color = color
    }
    
    func BaggageFull() {
        BaggageStatus = .full
    }
    
    func PnevmaUp() {
        Pnevma = .up
    }
    
    class CarSport: Car {
        var spoiler: String
        var turbin: Bool
        
        init(MotorStatus: MotorStatus, WindowStatus: WindowStatus, BaggageStatus: BaggageStatus, Pnevma: Pnevma, mp3: Bool, transmission: String, color: UIColor, spoiler: String, turbin: Bool) {
            self.spoiler = spoiler
            self.turbin = turbin
            super.init(MotorStatus: MotorStatus, WindowStatus: WindowStatus, BaggageStatus: BaggageStatus, Pnevma: Pnevma, mp3: mp3, transmission: transmission, color: color)
        }
        
        override func PnevmaUp() {
            super.PnevmaUp()
            print("Pnevma is Up")
        }
    }
    
    class trunkCar: Car {
        var volume: Double
        
        init(MotorStatus: MotorStatus, WindowStatus: WindowStatus, BaggageStatus: BaggageStatus, Pnevma: Pnevma, mp3: Bool, transmission: String, color: UIColor, volume: Double) {
            self.volume = volume
            super.init(MotorStatus: MotorStatus, WindowStatus: WindowStatus, BaggageStatus: BaggageStatus, Pnevma: Pnevma, mp3: mp3, transmission: transmission, color: color)
        }
        
        override func BaggageFull() {
            super.BaggageFull()
            print("Baggage is full")
        }
        
    }
    
    
}



