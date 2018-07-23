//
//  FullMapViewController.swift
//  Cafehollic
//
//  Created by Sayed Abdo on 7/22/18.
//  Copyright © 2018 TheAmrAli. All rights reserved.
//

import UIKit
import MapKit

class FullMapViewController: UIViewController , MKMapViewDelegate {
    @IBOutlet weak var LblTabYourLocation: UILabel!
    
    @IBOutlet weak var BtnOutletGetDirections: UIButton!
    @IBOutlet weak var Fullmap: MKMapView!
    var cafe: Cafe!

     var annontation = MKPointAnnotation()
    var cafeAnnontaion = MKPointAnnotation()
    @IBAction func BtnGetDirections(_ sender: Any) {
        
        
        
        let Request = MKDirectionsRequest()
        Request.source = MKMapItem(placemark: MKPlacemark(coordinate: annontation.coordinate))
        Request.destination = MKMapItem(placemark: MKPlacemark(coordinate: cafeAnnontaion.coordinate))
        Request.requestsAlternateRoutes = true
        Request.transportType = .automobile
        
        
        let direction = MKDirections(request: Request)
        direction.calculate { ( response, error) in
            guard let unwrappedResponse = response else {return}
            
            for route in unwrappedResponse.routes {
               
                self.Fullmap.add(route.polyline)
                self.Fullmap.setVisibleMapRect(route.polyline.boundingMapRect, animated: true)
                
                let region  = MKCoordinateRegionMakeWithDistance(self.annontation.coordinate, 500, 500)
               self.Fullmap.setRegion(region, animated: true)
            }
        }
    }
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let rendrer = MKPolylineRenderer(polyline: overlay as! MKPolyline)
        rendrer.strokeColor = UIColor.blue
        rendrer.lineWidth = 4.2
        return rendrer
    }
    @IBAction func AddMyLocation(_ sender: UILongPressGestureRecognizer) {
        
        let overlays = Fullmap.overlays
        Fullmap.removeOverlays(overlays)
        Fullmap.removeAnnotation(annontation)
        let location = sender.location(in: self.Fullmap)
        let locCoord = self.Fullmap.convert(location, toCoordinateFrom: self.Fullmap)
       
        annontation.coordinate = locCoord
        self.Fullmap.addAnnotation(annontation)
        annontation.title = "You"
        self.LblTabYourLocation.isHidden = true
        self.BtnOutletGetDirections.isHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Fullmap.delegate = self
        Fullmap.showsTraffic = true
        configure(Location: cafe.location)

        self.view.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(FullMapViewController.AddMyLocation(_:)))
        self.view.addGestureRecognizer(tapGesture)
        
        
        BtnOutletGetDirections.isHidden = true
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func configure (Location : String ){
        
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(Location) { (PlaceMars, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            } else {
                if let PlaceMarks = PlaceMars {
                    let PlaceMarks = PlaceMars![0]
                    
                    let annotation = MKPointAnnotation()
                    if let location = PlaceMarks.location{
                        annotation.coordinate = location.coordinate
                        self.cafeAnnontaion = annotation
                        self.Fullmap.addAnnotation(annotation)
                        
                        annotation.title = self.cafe.name
                        self.Fullmap.showAnnotations([annotation], animated: true)
                        self.Fullmap.selectAnnotation(annotation, animated: true)
                        let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 250, 250)
                        self.Fullmap.setRegion(region, animated: true)
                    }
                }
            }
        }
        
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
