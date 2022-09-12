//
//  LocationViewModel.swift
//  MindMapApp
//
//  Created by MM on 07.09.2022.
//

import Foundation
import MapKit
import SwiftUI

class LocationViewModel: ObservableObject {
    
    //all loaded locations
    @Published var locations: [Location]
    //current location on map
    @Published var mapLocation: Location {
        didSet {
            self.updateMapLocation(location: mapLocation)
        }
    }
    //current rigeon on map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    var mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    
    //ShowListOfLocation
    @Published var isLocationListShow: Bool = false
    
    //show location detail via sheet
    @Published var sheetLocation: Location? = nil
    
    @Published var locationJSON: LocationJSON
    
    init() {
        let locations = LocationsDataService.locations
        let locJSON = Bundle.main.decode(LocationJSON.self, from: "1.json")
        self.locationJSON = locJSON
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapLocation(location: locations.first!)
        
    }
    
    private func updateMapLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
    }
    
    func listLocationToggle() {
        withAnimation(.easeInOut) {
            isLocationListShow.toggle()
        }
    }
    
    func showNextLocation(location: Location) {
        mapLocation = location
        isLocationListShow = false
    }
    
    func nextButtonPressed() {
        // Узнаём текущий индекс
        guard let currentPosition = locations.firstIndex(where: { $0 == mapLocation }) else {
            print("No such position")
            return
        }
        let nextPosition = currentPosition + 1
        
        //Проверяем есть ли следующий индекс в аррей
        guard locations.indices.contains(nextPosition) else {
            //если нету след индекса - то первый индекс
            guard let fisrtLocation = locations.first else {
                print("No first position")
                return
            }
            showNextLocation(location: fisrtLocation)
            return
        }
        //если проверки пройдены, то покажи след индекс
        showNextLocation(location: locations[nextPosition])
    }
    
    func indexInArray(location: Location) -> Double {
        guard let index = locations.firstIndex(of: location) else {
            print("noSuchIndex")
            return 0
        }
        return Double(index)
    }
}
