//
//  MapView.swift
//  Africa
//
//  Created by Mark Nair on 12/5/23.
//

import SwiftUI
import MapKit

extension CLLocationCoordinate2D {
    static let serengeti = CLLocationCoordinate2D(latitude: -2.3333333, longitude: 34.8333333)
    
    static let kruger = CLLocationCoordinate2D(latitude: -23.9883848, longitude: 31.5525515)
    
    static let chobe = CLLocationCoordinate2D(latitude: -18.7305642, longitude: 24.4292148)
    
    static let kidepo = CLLocationCoordinate2D(latitude: 3.8495757, longitude: 33.7525049)
    
    static let etosha = CLLocationCoordinate2D(latitude: -18.8555909, longitude: 16.327131)
    
    static let solonga = CLLocationCoordinate2D(latitude: -1.9999932, longitude: 21.0002492)
}


struct MapView: View {
    
    @State private var position: MapCameraPosition = .automatic
    
    
    var body: some View {
        Map(position: $position) {
            Annotation("serengeti", coordinate: .serengeti, anchor: .bottom) {
                ZStack {
                    Circle()
                        .foregroundStyle(.indigo.opacity(0.5))
                        .frame(width: 80, height: 80)
                    
                    Image(systemName: "lion-1.circle.fill")
                        .symbolEffect(.variableColor)
                        .padding()
                        .foregroundStyle(.white)
                        .background(Color.indigo)
                        .clipShape(Circle())
                }
            }
            
            Annotation("kruger", coordinate: .kruger, anchor: .bottom) {
                ZStack {
                    Circle()
                        .foregroundStyle(.indigo.opacity(0.5))
                        .frame(width: 80, height: 80)
                    Image(systemName:
                    "map-kruger.circle.fill")
                    .symbolEffect(.variableColor)
                    .padding()
                    .foregroundStyle(.white)
                    .background(Color.indigo)
                    .clipShape(Circle())
                }
            }
            
            Annotation("chobe", coordinate: .chobe, anchor: .bottom) {
                ZStack {
                    Circle()
                        .foregroundStyle(.indigo.opacity(0.5))
                        .frame(width: 80, height: 80)
                    Image(systemName:
                            "map-chobe.circle.fill")
                    .symbolEffect(.variableColor)
                    .padding()
                    .foregroundStyle(.white)
                    .background(Color.indigo)
                    .clipShape(Circle())
                }
            }
            
            Annotation("kidepo", coordinate: .kidepo, anchor: .bottom) {
                ZStack {
                    Circle()
                        .foregroundStyle(.indigo.opacity(0.5))
                        .frame(width: 80, height: 80)
                    Image(systemName:
                    "map-kidepo.circle.fill")
                    .symbolEffect(.variableColor)
                    .padding()
                    .foregroundStyle(.white)
                    .background(Color.indigo)
                    .clipShape(Circle())
                }
            }
            
            Annotation("etosha", coordinate: .etosha, anchor: .bottom) {
                ZStack {
                    Circle()
                        .foregroundStyle(.indigo.opacity(0.5))
                        .frame(width: 80, height: 80)
                    Image(systemName:
                    "map-etosha.circle.fill")
                    .symbolEffect(.variableColor)
                    .padding()
                    .foregroundStyle(.white)
                    .background(Color.indigo)
                    .clipShape(Circle())
                }
            }
            
            Annotation("solonga", coordinate: .solonga, anchor: .bottom) {
                ZStack {
                    Circle()
                        .foregroundStyle(.indigo.opacity(0.5))
                        .frame(width: 80, height: 80)
                    Image(systemName:
                    "map-solonga.circle.fill")
                    .symbolEffect(.variableColor)
                    .padding()
                    .foregroundStyle(.white)
                    .background(Color.indigo)
                    .clipShape(Circle())
                }
            }
        }
        .onAppear {
            position = .item(MKMapItem(placemark: .init(coordinate: .serengeti)))
        }
        .safeAreaInset(edge: .bottom) {
            VStack {
                Button(action: {
                    withAnimation {
                        position = .camera(MapCamera(
                            centerCoordinate: .serengeti,
                            distance: 800,
                            heading: 90,
                            pitch: 50))
                    }
                }) {
                    Text("Serenget")
                }
                .tint(.black)
                .buttonStyle(.borderedProminent)
                
                Button(action: {
                    withAnimation {
                        position = .item(MKMapItem(placemark: .init(coordinate: .kruger)))
                    }
                }) {
                    Text("Kruger")
                }
                .tint(.black)
                .buttonStyle(.borderedProminent)
                
                Button(action: {
                    withAnimation {
                        position = .item(MKMapItem(placemark: .init(coordinate: .chobe)))
                    }
                }) {
                    Text("Chobe")
                }
                .tint(.black)
                .buttonStyle(.borderedProminent)
                
                Button(action: {
                    withAnimation {
                        position = .item(MKMapItem(placemark: .init(coordinate: .kidepo)))
                    }
                }) {
                    Text("Kidepo")
                }
                .tint(.black)
                .buttonStyle(.borderedProminent)
                
                Button(action: {
                    withAnimation {
                        position = .item(MKMapItem(placemark: .init(coordinate: .etosha)))
                    }
                }) {
                    Text("Etosha")
                }
                .tint(.black)
                .buttonStyle(.borderedProminent)
                
                Button(action: {
                    withAnimation {
                        position = .item(MKMapItem(placemark: .init(coordinate: .solonga)))
                    }
                }) {
                    Text("Solonga")
                }
                .tint(.black)
                .buttonStyle(.borderedProminent)
            }
        }
    }
#if DEBUG
    struct MapView_Previews: PreviewProvider {
        static var previews: some View {
            MapView()
        }
    }
#endif
}
