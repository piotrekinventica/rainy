//
//  WeatherDataSource.swift
//  rainyshiny
//
//  Created by Piotr Kaźmierczak on 24.04.2017.
//  Copyright © 2017 Piotr Kaźmierczak. All rights reserved.
//

import UIKit

class WeatherDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        return cell
    }
}
