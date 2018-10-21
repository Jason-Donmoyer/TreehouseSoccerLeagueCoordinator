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

var soccorLeaguePlayer = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenburg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]



// initialize arrays for experienced and non-experienced players

var hasExperience = [Any]()
var noExperience = [Any]()

var teamSharks = [String : Any]()
var teamDragons = [String : Any]()
var teamRaptors = [String : Any]()


// sort players by height


var sortedByHeight = soccorLeaguePlayer.sorted() {
    $0["height"] as! Double > $1["height"] as! Double
}

for player in sortedByHeight {
    if player["experienced"] as! Bool == true {
        hasExperience.append(player)
    } else {
        noExperience.append(player)
    }
}



print(hasExperience)
print(noExperience)
//print(sortedByHeight)
// print(soccorLeaguePlayer[10]["name"]!)
