
enum PrintFioMode: String {
    case full = "Полное имя: "
    case middle = "Имя и фамилия: "
    case short = "Фамилия: "
}

let fio = [
    ("Иванов", "Иван", "Иванович"),
    ("Сидоров", "Иван", "Петрович"),
    ("Игорев", "Игорь", "Владимирович")
]

func printFio(_ fio: [(String, String, String)], mode: PrintFioMode) {
    
    for i in fio {
        switch mode {
        case .full:
            print(mode.rawValue, i.0, i.1, i.2)
        case .middle:
            print(mode.rawValue,i.0, i.1)
        case .short:
            print(mode.rawValue,i.0)
        }
    }
}

printFio(fio, mode: .full)

enum DoorState: String {
    case open = "Открыты"
    case close = "Закрыты"
}

enum EngineState {
    case start, stop
}

struct Car {
    // private fileprivate internal public open
    private var color: String
    var odo: Int = 0
    let doorCount: Int

    var doorState: DoorState {
        didSet {
            print("Двери были \(oldValue.rawValue.lowercased())")
        }
        willSet {
            print("Двери до этого были \(doorState.rawValue.lowercased())")
        }
    }
    var engineState: EngineState
    
    init(color: String, odo: Int? = nil, doorCount: Int, doorState: DoorState, engineState: EngineState) {
        self.color = color
        self.doorCount = doorCount
        self.odo = odo ?? 0
        self.doorState = doorState
        self.engineState = engineState
    }
    
    mutating func changeDoorState() {
        self.doorState = doorState == .open ? .close : .open
    }
    
    mutating func changeColor(newColor: String) {
        self.color = newColor
        print(self.color)
    }
}

var car = Car(color: "Yellow", odo: 10000, doorCount: 3, doorState: .close, engineState: .stop)

car.doorState = .open
car.changeDoorState()
car.changeColor(newColor: "Black")


struct Circle {
    
    var radius: Double
    
    var diametr: Double {
        get {
           return radius * 2
        }
        set {
           radius = newValue / 2
        }
    }
}

var circ = Circle(radius: 10)
print(circ.diametr)

circ.diametr = 15
print(circ.radius)
