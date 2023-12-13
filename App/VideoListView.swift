//
//  VideoListView.swift
//  Africa
//
//  Created by Mark Nair on 12/4/23.
//

import SwiftUI

struct VideoListView: View {
    //MARK: PROPERTIES
    
    
    @State private var videos: [Video] = VideoAfricanData().getAnimalVido()
    @State private var selectedVideo: Video? = nil
    var Video = VideoPlayerView(videoSelected: "", videoTitle: "")
    
    //MARK: BODY
    var body: some View {
        NavigationStack {
            List {
                ForEach(videos) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                        .onTapGesture {
                            selectedVideo = item
                        }
                }
            }
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                    }, label: {
                        Image(systemName: "arrow.2.squarepath")
                    })
                }
            }
            if let selectedVideo = selectedVideo {
                VideoPlayerView(videoSelected: selectedVideo.id, videoTitle: selectedVideo.name)
            }
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
