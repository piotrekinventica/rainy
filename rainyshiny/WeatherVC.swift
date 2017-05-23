//
//  ViewController.swift
//  rainyshiny
//
//  Created by Piotr Kaźmierczak on 21.04.2017.
//  Copyright © 2017 Piotr Kaźmierczak. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblCurrentTemp: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var lblWeatherType: UILabel!
    @IBOutlet weak var imgThumb: UIImageView!
    
    var currentWeather = CurrentWeather()
    let weatherDataSource = WeatherDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = weatherDataSource
        tableView.dataSource = weatherDataSource
        currentWeather.downloadWeatherDetails {
            self.updateMainUI()
        }
    }
    
    func updateMainUI() {
        lblDate.text = currentWeather.date
        lblCurrentTemp.text = "\(currentWeather.currentTemp) C"
        lblCity.text = currentWeather.cityName
        lblWeatherType.text = currentWeather.weatherType
        imgThumb.image = UIImage(named: currentWeather.weatherType)
    }

}

