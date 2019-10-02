//
//  ViewController.swift
//  newApp
//
//  Created by Mystery on 02/10/2019.
//  Copyright © 2019 Mystery. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {
    
    @IBOutlet weak var myMap: MKMapView!
    override func viewDidLoad() {
     super.viewDidLoad()
        
           createAnnotations(locations: annotationLocations)
    }
        
        let annotationLocations = [
            ["title" : "Námestí Svobody", "latitude" :16.60781 ,"longitude" :49.1953],
            ["title" : "Petrov", "latitude" :49.19107, "longitude" :16.6075],
            ["title" : "Špilberk", "latitude" :49.19452 ,"longitude" :16.59922],
            ["title" : "Kraví hora", "latitude" :49.20422 ,"longitude" :16.58402],
            ["title" : "Wilsonuv les", "latitude" :49.20137 ,"longitude" :16.57485],
            ["title" : "Kamenny vrch ", "latitude" :49.18487 ,"longitude" : 16.55147],
            ["title" : "Hobrtenky", "latitude" :49.20372 ,"longitude" :16.53568],
            ["title" : "Hády", "latitude" :49.22188 ,"longitude" : 16.67432],
            ["title" : "Nad Šumberou ", "latitude" :49.23038 ,"longitude" : 16.68362],
            ["title" : "Velká Baba", "latitude" : 49.26247,"longitude" : 16.5509 ],
            ["title" : "Nad Vojankou", "latitude" :49.27328 ,"longitude" : 16.64028],
            ["title" : "Zadní Hády ", "latitude" :49.24583 ,"longitude" :16.71023],
            ["title" : "Knezí hora", "latitude" :49.28228 ,"longitude" :16.632],
            ["title" : "Lipovy vrch", "latitude" :49.22343 ,"longitude" :16.45852],
            ["title" : "Zavíravá", "latitude" :49.22343 ,"longitude" :16.45852 ],
            ["title" : "Nad Strelcím", "latitude" :49.2971 ,"longitude" : 16.67848 ],
            ["title" : "Babí lom", "latitude" :49.3132 ,"longitude" :16.57687],
            ["title" : "Na skalkách", "latitude" :49.34478 ,"longitude" :16.60295 ],
            ["title" : "Proklest", "latitude" :49.3102 ,"longitude" :16.77152],
            ["title" : "Bukovec", "latitude" : 49.36308,"longitude" :16.59522],
            ["title" : "Kojál", "latitude" :49.37007 ,"longitude" :16.81633],
            ["title" : "Helišova skála", "latitude" :49.41245 ,"longitude" :16.75872],
            ["title" : "Rájecky les", "latitude" :49.43822 ,"longitude" : 16.6958],
            ["title" : "Bucí", "latitude" :49.59138,"longitude" :16.73953],
            ["title" : "Babylon", "latitude" :49.4432 ,"longitude" : 16.46458 ],
            ["title" : "Na Babylóne (vychodní vrchol)", "latitude" :49.45888 ,"longitude" :16.69925 ],
            ["title" : "Holíkov", "latitude" :49.463 ,"longitude" : 16.7025 ],
            ["title" : "Sykor", "latitude" :49.44703 ,"longitude" : 16.4075 ],
            ["title" : "Skály", "latitude" :49.49138 ,"longitude" :16.7973  ],
            ["title" : "Skalky", "latitude" :49.50157 ,"longitude" : 16.78987 ],
            ["title" : "Horní les", "latitude" :49.59138 ,"longitude" :16.34215 ],
            ["title" : "Kamenice", "latitude" :49.60125 ,"longitude" :16.16433 ],
            ["title" : "Metodka", "latitude" :49.60615 ,"longitude" :16.14703  ],
            ["title" : "Pohledecká skála", "latitude" :49.59302 ,"longitude" : 16.12031 ],
            ["title" : "Kopecek", "latitude" :49.61063 ,"longitude" :16.09053  ],
            ["title" : "Krovina", "latitude" :49.65692 ,"longitude" : 16.05277 ],
            ["title" : "Devet skal", "latitude" :49.67072 ,"longitude" :16.0323  ],
            ["title" : "Durda", "latitude" :48.8541 ,"longitude" : 16.0323 ],
            ["title" : "Malá Javorina", "latitude" :48.85475 ,"longitude" : 17.66913 ],
            ["title" : "Velká Javorina ", "latitude" : 48.85775,"longitude" :17.67593  ],
            ["title" : "Suchy vrch", "latitude" :50.0508 ,"longitude" : 16.69375 ],
            ["title" : "Jeráb", "latitude" :50.05682 ,"longitude" : 16.813 ],
            ["title" : "Ostruzná", "latitude" :50.00167 ,"longitude" :17.20953  ],
            ["title" : "Pecny", "latitude" :50.02192 ,"longitude" :17.18165  ],
            ["title" : "Bridlicná hora", "latitude" :50.03265 ,"longitude" :17.18735  ],
            ["title" : "Jelení hrbet ", "latitude" :50.03905 ,"longitude" :17.2007  ],
            ["title" : "Velky Máj ", "latitude" :50.04611 ,"longitude" :17.21194  ],
            ["title" : "Vysoká hole", "latitude" :50.05861 ,"longitude" :17.23056  ],
            ["title" : "Praded", "latitude" : 50.08313,"longitude" : 17.23056 ],
            
        ]
           
       func createAnnotations (locations : [[String : Any]]) {
       
       for location in locations {
        
          let annotations = MKPointAnnotation()
            annotations.title = location["title"] as? String
            annotations.coordinate = CLLocationCoordinate2D(latitude:location["latitude"] as! CLLocationDegrees,
                                                            longitude:location["longitude"] as! CLLocationDegrees)
        
            myMap.addAnnotation(annotations)
        }
        
        
        
}
}



