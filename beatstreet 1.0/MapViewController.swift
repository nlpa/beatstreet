//
//  MapViewController.swift
//  Beat Road 1.0
//
//  Created by Sal Abuali on 10/28/20.
//  Copyright © 2020 Sal Abuali. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{
    
    @IBOutlet weak var mapView: MKMapView!
        var locationManager = CLLocationManager()
        let authorizationStatus = CLLocationManager.authorizationStatus()
        let regionRadius: Double = 1000
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        mapView.delegate = self
        locationManager.delegate = self
        configureLocationServices()
        locationManager.startUpdatingLocation()
        mapView.showsUserLocation = true
        // Do any additional setup after loading the view.
        
    }
    
    func centerMapOnUserLocation() {
        guard let coordinate = locationManager.location?.coordinate else {return}
        let coordinateRegion = MKCoordinateRegion(center: coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    
    func configureLocationServices() {
        if authorizationStatus == .notDetermined {
            locationManager.requestWhenInUseAuthorization()
            locationManager.requestAlwaysAuthorization()
        } else {
            return
        }
    }

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if authorizationStatus == .authorizedWhenInUse || authorizationStatus == .authorizedAlways{
            locationManager.startUpdatingLocation()

        }
        centerMapOnUserLocation()
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        centerMapOnUserLocation()
    }
}
    
    
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
//
//        mapView.mapType = MKMapType.standard
//
//        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
//        let region = MKCoordinateRegion(center: locValue, span: span)
//        mapView.setRegion(region, animated: true)
//
//        let annotation = MKPointAnnotation()
//        annotation.coordinate = locValue
//        annotation.title = "Javed Multani"
//        annotation.subtitle = "current location"
//        mapView.addAnnotation(annotation)
//
//        //centerMap(locValue)
//    }
//
    
    
    
    
    
  // #### LOOK AT THIS!
//    import UIKit
//    import MapKit
//    import CoreLocation
//
//    class MapVC: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
//
//        @IBOutlet weak var mapView: MKMapView!
//        var locationManager = CLLocationManager()
//        let authorizationStatus = CLLocationManager.authorizationStatus()
//        let regionRadius: Double = 1000
//
//        override func viewDidLoad() {
//            super.viewDidLoad()
//            mapView.delegate = self
//            locationManager.delegate = self
//            configureLocationServices()
//        }
//
//        func centerMapOnUserLocation() {
//            guard let coordinate = locationManager.location?.coordinate else {return}
//            let coordinateRegion = MKCoordinateRegion(center: coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
//            mapView.setRegion(coordinateRegion, animated: true)
//        }
//
//        func configureLocationServices() {
//            if authorizationStatus == .notDetermined {
//                locationManager.requestAlwaysAuthorization()
//            } else {
//                return
//            }
//        }
//
//        func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
//            centerMapOnUserLocation()
//        }
//
//    }
    
    
    
    
    
    
    
    
    
    
    
//    override func viewDidAppear(_ animated: Bool) {
//            determineCurrentLocation()
//        }
//    //MARK:- CLLocationManagerDelegate Methods
//
//    private func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        let mUserLocation:CLLocation = locations[0] as CLLocation
//
//        let center = CLLocationCoordinate2D(latitude: mUserLocation.coordinate.latitude, longitude: mUserLocation.coordinate.longitude)
//        let mRegion = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//
//        mapView.setRegion(mRegion, animated: true)
//    }
//func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
//        print("Error - locationManager: \(error.localizedDescription)")
//    }
////MARK:- Intance Methods
//
//func determineCurrentLocation() {
//    locationManager = CLLocationManager()
//    locationManager.delegate = self
//    locationManager.desiredAccuracy = kCLLocationAccuracyBest
//    locationManager.requestAlwaysAuthorization()
//
//    if CLLocationManager.locationServicesEnabled() {
//        locationManager.startUpdatingLocation()
//    }
//}
////    updatingLocation = didUpdateLocations
//
//    // didUpdateLocations
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        let mUserLocation:CLLocation = locations[0] as CLLocation
//        let center = CLLocationCoordinate2D(latitude: mUserLocation.coordinate.latitude, longitude: mUserLocation.coordinate.longitude)
//        let mRegion = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//        mapView.setRegion(mRegion, animated: true)
//
//        // Get user's Current Location and Drop a pin
//    let mkAnnotation: MKPointAnnotation = MKPointAnnotation()
//        mkAnnotation.coordinate = CLLocationCoordinate2DMake(mUserLocation.coordinate.latitude, mUserLocation.coordinate.longitude)
//        mkAnnotation.title = self.setUsersClosestLocation(mLattitude: mUserLocation.coordinate.latitude, mLongitude: mUserLocation.coordinate.longitude)
//        mapView.addAnnotation(mkAnnotation)
//    }
//    //MARK:- Intance Methods
//
//    func setUsersClosestLocation(mLattitude: CLLocationDegrees, mLongitude: CLLocationDegrees) -> String {
//        let geoCoder = CLGeocoder()
//        let location = CLLocation(latitude: mLattitude, longitude: mLongitude)
//
//        geoCoder.reverseGeocodeLocation(location) {
//            (placemarks, error) -> Void in
//
//            if let mPlacemark = placemarks{
//                if let dict = mPlacemark[0].addressDictionary as? [String: Any]{
//                    if let Name = dict["Name"] as? String{
//                        if let City = dict["City"] as? String{
//                            self.currentLocationStr = Name + ", " + City
//                        }
//                    }
//                }
//            }
//        }
//        return currentLocationStr
//    }
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */


