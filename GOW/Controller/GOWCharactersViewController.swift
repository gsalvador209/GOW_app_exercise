//
//  CharactersTableViewController.swift
//  GOW
//
//  Created by Salvador Chavez on 07/03/25.
//

import UIKit

class GOWCharactersViewController: UITableViewController {
    
    // MARK: - Properties
    let characters: [Character] = [
        Character(
            name: "character.name.marcusfenix",
            coalition: "character.coalition.marcusfenix",
            race: "character.race.marcusfenix",
            sex: "character.sex.marcusfenix",
            firstAppearance: "character.firstappearance.marcusfenix"
        ),
        Character(
            name: "character.name.dominicsantiago",
            coalition: "character.coalition.dominicsantiago",
            race: "character.race.dominicsantiago",
            sex: "character.sex.dominicsantiago",
            firstAppearance: "character.firstappearance.dominicsantiago"
        ),
        Character(
            name: "character.name.augustuscole",
            coalition: "character.coalition.augustuscole",
            race: "character.race.augustuscole",
            sex: "character.sex.augustuscole",
            firstAppearance: "character.firstappearance.augustuscole"
        ),
        Character(
            name: "character.name.damonbaird",
            coalition: "character.coalition.damonbaird",
            race: "character.race.damonbaird",
            sex: "character.sex.damonbaird",
            firstAppearance: "character.firstappearance.damonbaird"
        ),
        Character(
            name: "character.name.queenmyrrah",
            coalition: "character.coalition.queenmyrrah",
            race: "character.race.queenmyrrah",
            sex: "character.sex.queenmyrrah",
            firstAppearance: "character.firstappearance.queenmyrrah"
        ),
        Character(
            name: "character.name.generalraam",
            coalition: "character.coalition.generalraam",
            race: "character.race.generalraam",
            sex: "character.sex.generalraam",
            firstAppearance: "character.firstappearance.generalraam"
        ),
        Character(
            name: "character.name.kaitdiaz",
            coalition: "character.coalition.kaitdiaz",
            race: "character.race.kaitdiaz",
            sex: "character.sex.kaitdiaz",
            firstAppearance: "character.firstappearance.kaitdiaz"
        )
    ]
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
            super.viewDidLoad()
            tableView.rowHeight = UITableView.automaticDimension
            tableView.estimatedRowHeight = 100
        }
    
    // MARK: - TableView Data Source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell", for: indexPath) as! CharacterTableViewCell
        
        let character = characters[indexPath.row]
        cell.titleLabel.text = NSLocalizedString(character.name, comment: "")
        cell.detailLabel.text = character.formattedDetails
        print("Detail Text: \(character.formattedDetails)")
        return cell
    }
    
}
