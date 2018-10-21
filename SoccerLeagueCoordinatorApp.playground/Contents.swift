import UIKit


// constants for each player's info

let joeSmith: [String : Any] = ["name": "Joe Smith", "height": 42.0, "experienced": true, "guardians": "Jim and Jan Smith"]
let jillTanner: [String : Any] = ["name": "Jill Tanner", "height": 36.0, "experienced": true, "guardians": "Clara Tanner"]
let billBon: [String : Any] = ["name": "Bill Bon", "height": 43.0, "experienced": true, "guardians": "Sara and Jenny Bon"]
let evaGordon: [String : Any] = ["name": "Eva Gordon", "height": 45.0, "experienced": false, "guardians": "Wendy and Mike Gordon"]
let mattGill: [String : Any] = ["name": "Matt Gill", "height": 40.0, "experienced": false, "guardians": "Charles and Sylvia Gill"]
let kimmyStein: [String : Any] = ["name": "Kimmy Stein", "height": 41.0, "experienced": false, "guardians": "Bill and Hillary Stein"]
let sammyAdams: [String : Any] = ["name": "Sammy Adams", "height": 45.0, "experienced": false, "guardians": "Jeff Adams"]
let karlSaygan: [String : Any] = ["name": "Karl Saygan", "height": 42.0, "experienced": true, "guardians": "Heather Bledsoe"]
let suzaneGreenburg: [String : Any] = ["name": "Suzane Greenburg", "height": 44.0, "experienced": true, "guardians": "Henrietta Dumas"]
let salDali: [String : Any] = ["name": "Sal Dali", "height": 41.0, "experienced": false, "guardians": "Gala Dali"]
let joeKavalier: [String : Any] = ["name": "Joe Kavalier", "height": 39.0, "experienced": false, "guardians": "Sam and Elaine Kavalier"]
let benFinkelstein: [String : Any] = ["name": "Ben Finkelstein", "height": 44.0, "experienced": false, "guardians": "Aaron and Jill Finkelstein"]
let diegoSoto: [String : Any] = ["name": "Diego Soto", "height": 41.0, "experienced": true, "guardians": "Robin and Sarika Soto"]
let chloeAlaska: [String : Any] = ["name": "Chloe Alaska", "height": 47.0, "experienced": false, "guardians": "David and Jamie Alaska"]
let arnoldWillis: [String : Any] = ["name": "Arnold Willis", "height": 43.0, "experienced": false, "guardians": "Claire Willis"]
let phillipHelm: [String : Any] = ["name": "Phillip Helm", "height": 44.0, "experienced": true, "guardians": "Thomas Helm and Eva Jones"]
let lesClay: [String : Any] = ["name": "Les Clay", "height": 42.0, "experienced": true, "guardians": "Wynonna Brown"]
let herschelKrustofski: [String : Any] = ["name": "Herschel Krustofski", "height": 45.0, "experienced": true, "guardians": "Hyman and Rachel Krustofski "]

// collection to hold all players in the league

var players = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenburg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

// initialize arrays for experienced and non-experienced players

var hasExperience = [Any]()
var noExperience = [Any]()

var teamSharks = [Any]()
var teamDragons = [Any]()
var teamRaptors = [Any]()

// sort players into experienced and non-experienced collections

for player in players {
    if player["experienced"] as! Bool == true {
        hasExperience.append(player)
    } else {
        noExperience.append(player)
    }
}

// logic to sort players into teams

for player in hasExperience {
    if hasExperience.count > teamSharks.count && teamSharks.count > teamDragons.count && teamSharks.count > teamRaptors.count {
        teamRaptors.append(player)
    } else if hasExperience.count > teamDragons.count && teamDragons.count < teamRaptors.count && teamDragons.count < teamSharks.count {
        teamDragons.append(player)
    } else {
        teamSharks.append(player)
    }
}

for player in noExperience {
    if noExperience.count > teamSharks.count && teamSharks.count > teamDragons.count && teamSharks.count > teamRaptors.count {
        teamRaptors.append(player)
    } else if noExperience.count > teamDragons.count && teamDragons.count < teamRaptors.count && teamDragons.count < teamSharks.count {
        teamDragons.append(player)
    } else {
        teamSharks.append(player)
    }
}

// collection of letters

var letters = [String]()

//Logic to create letters to guardians and save them to a collection

for player in teamSharks {
    let teammate = player as? NSDictionary
    let guardian = teammate?["guardians"] as! String
    let playerName = teammate?["name"] as! String
    let team = "Sharks"
    let date = "March 17, at 3PM"
    
    let letterToGuardian = "Dear \(guardian), we would like to welcome you to a new year of youth soccer! \(playerName) has been placed with team \(team) this season. The first practice will be on \(date). Thank you for your continued support and have fun! "
    letters.append(letterToGuardian)
}

for player in teamDragons {
    let teammate = player as? NSDictionary
    let guardian = teammate?["guardians"] as! String
    let playerName = teammate?["name"] as! String
    let team = "Dragons"
    let date = "March 17, at 1PM"
    
    let letterToGuardian = "Dear \(guardian), we would like to welcome you to a new year of youth soccer! \(playerName) has been placed with team \(team) this season. The first practice will be on \(date). Thank you for your continued support and have fun! "
    letters.append(letterToGuardian)
}

for player in teamRaptors {
    let teammate = player as? NSDictionary
    let guardian = teammate?["guardians"] as! String
    let playerName = teammate?["name"] as! String
    let team = "Raptors"
    let date = "March 18, at 1PM"
    
    let letterToGuardian = "Dear \(guardian), we would like to welcome you to a new year of youth soccer! \(playerName) has been placed with team \(team) this season. The first practice will be on \(date). Thank you for your continued support and have fun! "
    letters.append(letterToGuardian)
}


func printLetters() {
    var count = 0
    while count < letters.count {
        for letter in letters {
            print(letter)
            count += 1
        }
    }
}


printLetters()

