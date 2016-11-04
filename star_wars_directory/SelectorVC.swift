//
//  SelectorVC.swift
//  star_wars_directory
//
//  Created by dubie on 11/3/16.
//  Copyright © 2016 dubay. All rights reserved.
//

import UIKit

class SelectorVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    enum GroupType {
        case Planet
        case Character
        case Ship
    }
    
    let Types: [GroupType: String] = [GroupType.Planet:"Planets", GroupType.Character: "Characters", GroupType.Ship: "Ships"]
    
    var dataEngine = DataEngine.init()
    var selectionGroups: [String]!
    var selectedGroupType: GroupType?
    var selectedGroup: [BaseObject]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self

        selectionGroups = Array(Types.values)
        
        selectedGroup = dataEngine.createInitalCharacters()

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let _ = selectedGroupType, let group = selectedGroup{
            return group.count
        } else{
            return selectionGroups.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        if let _ = selectedGroupType, let group = selectedGroup{
            cell.textLabel?.text = group[indexPath.row].name
        } else {
            cell.textLabel?.text = selectionGroups[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedGroupType = GroupType.Character
        tableView.reloadData()
    }
    


}
