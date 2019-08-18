//
//  AllCitiesVC.swift
//  edtech
//
//  Created by Kuku Kuku on 17/08/2019.
//  Copyright © 2019 Kuku Kuku. All rights reserved.
//

import UIKit

class AllCitiesVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var cities: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func AddCityButton(_ sender: Any) {
        performSegue(withIdentifier: "ToSelect", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! FullCitiesVC
        vc.delegate = self
    }
    
}

extension AllCitiesVC: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllCityCell") as! CityCell
        cell.setupWithCity(cities[indexPath.row])
        return cell
    }
    
}

extension AllCitiesVC: FullCitiesDelegate {
    
    func vc(_ vc: FullCitiesVC, didSelectCity city: String) {
        cities.append(city)
        tableView.reloadData()
    }
}
