//
//  GalleryView.swift
//  Africa
//
//  Created by Mark Nair on 12/4/23.
//

import SwiftUI

struct GalleryView: View {
    @State private var photoData = [String]()
    @State private var sheetVisible = false
    @State private var selectedPhoto = ""
    var africanImage = AnimalData()
    
    
    var body: some View {
        VStack {
            Text("African Animals")
                .font(.largeTitle)
                .bold()
                .italic()
                .background(.brown)
                .foregroundColor(.black)
            
            GeometryReader { proxy in
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: [GridItem(spacing: 20), GridItem(spacing: 20), GridItem(spacing: 20)]) {
                        ForEach(photoData, id: \.self) { photo in
                            Image(photo)
                                .resizable()
                            
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: (proxy.size.width - 25) / 2)
                                .clipped()
                                
                                .onTapGesture {
                                    sheetVisible = true
                                    selectedPhoto = photo
                                    
                                }
                            
                        }
                    }
                }
            }
            
        }
        .padding()
        .onAppear {
            photoData = africanImage.getPhotos()
    }
        .sheet(isPresented: $sheetVisible) {
            PhotoView(selectedPhoto: $selectedPhoto, isSheetVisible: $sheetVisible)
        }
    }
}

#Preview {
    GalleryView()
}
