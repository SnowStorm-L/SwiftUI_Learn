//
//  MapView.swift
//  Chapter_1
//
//  Created by L on 2020/8/26.
//  Copyright © 2020 L. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let cooridnate = CLLocationCoordinate2D(latitude: 33.873415, longitude: -115.9009923)
        // span表示的是regoin的范围。它有两个字段一个是latitudeDelta，表示纬度范围，南纬和北纬加一起应该有180 度，所以它的范围应该是大于0度，小于等于180度；
        // 另一个是longitudeDelta，表示经度范围，东经和西经加一起应该有360度，所以它的范 围应该是大于0度，小于360度。
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        // region表示地图中的一块区域，它有两个字段一个是center，就是这块区域中心点的经纬度；另一个是span
        let region = MKCoordinateRegion(center: cooridnate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
