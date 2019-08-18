//
//  FullCitiesVC.swift
//  edtech
//
//  Created by Kuku Kuku on 17/08/2019.
//  Copyright © 2019 Kuku Kuku. All rights reserved.
//

import UIKit

protocol FullCitiesDelegate {
    func vc(_ vc: FullCitiesVC, didSelectCity city: String)
}

class FullCitiesVC: UITableViewController {

    var cities: [String] = ["Moscow", "Ufa", "St.piter", "Ekat", "Kazan"]
    
    var delegate: FullCitiesDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell") as! CityCell
        cell.setupWithCity(cities[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let city = cities[indexPath.row]
        delegate?.vc(self, didSelectCity: city)
        self.navigationController?.popViewController(animated: true)
    }

    

}
