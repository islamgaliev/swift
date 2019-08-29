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

    var cities: [Subjects] = []//["Moscow", "St.Petersburg", "Kazan", "Tver", "Ekaterinburg", "Helsinki", "Oulu", "Tampere", "Berlin", "Madrid", "Barselona"]
    
    var delegate: FullCitiesDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cities.append(Subjects(title: "Физика", iamageName: "0", subName: "Курс 1", subInfo: "Лучший предмет"))
        cities.append(Subjects(title: "Математика", iamageName: "1", subName: "Курс Математики 1", subInfo: "Царица наук"))
        cities.append(Subjects(title: "Истори", iamageName: "2", subName: "Курс литературы", subInfo: "Певучий"))
        
        tableView.register(UINib(nibName: "MyCell", bundle: nil), forCellReuseIdentifier: "MyCell")
        
        self.tableView.rowHeight = 400
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell") as! MyCell
        cell.setupCellForSub(cities[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let city = cities[indexPath.row]
        //delegate?.vc(self, didSelectCity: city)
        //self.navigationController?.popViewController(animated: true)
    }

    

}
