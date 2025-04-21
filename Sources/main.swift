// a constant
let initValue: Int = 500
// a variable
var addValue: Int = 50
var finalValue: Int = initValue + addValue

// a constant which get's a dynamic value once
let newInitValue: Int
newInitValue = 100

print("\(initValue) + \(addValue) = \(finalValue)")

finalValue = newInitValue + addValue

print("\(newInitValue) + \(addValue) = \(finalValue)")

let cucumber = 3
let tomatoes = 4
var vegtablePieces: Float
let devider = 3

vegtablePieces = (Float(cucumber)+Float(tomatoes))/Float(devider)
print("I have \(cucumber) cucumber(s) and \(tomatoes) tomato(es) and I need to devide them by \(devider) which reults in \(vegtablePieces)")

let description = """
    It is super nice that formatting these
    multiline strings work so nicely in Swift.
        - identation is handled in a great way
        - and even "quotes" work perfectly
    Just awesome!
"""

print(description)

var fruits = ["apple", "banana", "melon"]

print("I have some fruits: \(fruits)")

let newFruit = "blueberry"

print("And I can add \(newFruit)")

fruits.append(newFruit)

print("Which means I now have: \(fruits)")

var rocinante = [
    "Jim": "Captain",
    "Naomi": "XO",
    "Alex": "Pilot",
    "Amos": "Mechanic"
]

print("Dictionaries are also handled pretty nicely.")

print("Like the one which holds the crew of the Rocinante: \(rocinante)")

let bobby = "Bobbie"

rocinante[bobby] = "Passenger"

print("I can also add passengers like \(bobby) to the Rocinante: \(rocinante)")

let maxPassenger = 5
let passengerRole = "Passenger"
let interestedPassengers = ["Chrisjen", "Detective Miller", "Basia", "Elvi", "Camina"]
var passengerCount = 0

print("There are some passengers waiting to get on board the Rocinante: \(interestedPassengers)")

print("The max available seats are: \(maxPassenger)\n")

print("Let's check how many passengers can still join the next trip")

for (name, role) in rocinante {
    if role == passengerRole {
        passengerCount += 1
        print("Found passenger: \(name)")
        print("We have \(passengerCount) passenger(s) on board")
    }
}

for passenger in interestedPassengers {
    if passengerCount < maxPassenger {
        print("Occupied seats: \(passengerCount)")
        passengerCount += 1
        rocinante[passenger] = passengerRole
        print("\(passenger) is joining the next trip")
    } else {
        print("No more space left. \(passenger) needs to stay behind")
    }
}

let full = if passengerCount >= maxPassenger {
    "✅"
} else {
    "❌"
}
print("Passenger count:", passengerCount, full, "\n")

func isCrewOnBoard(manifest shipManifest: [String : String]) -> Bool {
    let requiredRoles = ["Captain", "XO", "Pilot", "Mechanic"]
    let requiredCrew = 4
    var actualCrew = 0
    for (_, role) in shipManifest {
        if requiredRoles.contains(role){
            print("We have \(role)")
            actualCrew += 1
        }
    }
    return actualCrew == requiredCrew
}

print("Crew on board? \(isCrewOnBoard(manifest: rocinante))\n")

