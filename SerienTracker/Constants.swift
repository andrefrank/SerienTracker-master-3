//
//  Constants.swift
//  SerienTracker
//
//  Created by Daniel Keglmeier on 13.10.18.
//  Copyright © 2018 Daniel Keglmeier. All rights reserved.
//

import Foundation



let URL_BASE = "http://api.tvmaze.com/"
let SHOW_URL = URL_BASE + "shows/"
let EPLIST_URL = "http://api.tvmaze.com/shows/1/episodes"
typealias ShowResponseCompletion = (ShowMainInformation?) -> Void
typealias EpListCompletion = ([ShowEpisodenInformation]?) -> Void
