//
//  PhotoView.swift
//  Africa
//
//  Created by jose lara on 12/13/23.
//

import SwiftUI

struct PhotoView: View {
    @Binding var selectedPhoto: String
    @Binding var isSheetVisible: Bool
    
    var body: some View {
    
        ZStack {
            HStack{
                Spacer()
                VStack {
                    Button(action: {
                        isSheetVisible = false
                    }, label: {
                        Image(systemName: "x.circle")
                            .scaleEffect(2.0)
                            .foregroundColor(.red)
                            .opacity(1.0)
                    })
                    Spacer()
                    
                }
            }
            .padding()
            
            Image(selectedPhoto)
                .resizable()
            .aspectRatio(contentMode: .fit)
            .background(.red)
        }
    }
}

#Preview {
    PhotoView(selectedPhoto: Binding.constant("cheetah-1"), isSheetVisible: Binding.constant(true))
}
