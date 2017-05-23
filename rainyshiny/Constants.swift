//
//  Constants.swift
//  rainyshiny
//
//  Created by Piotr Kaźmierczak on 26.04.2017.
//  Copyright © 2017 Piotr Kaźmierczak. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APPID = "&appid="
let API_KEY = "672cfc0571f187b3725f3c75eb67454b"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)54\(LONGITUDE)36\(APPID)\(API_KEY)"
