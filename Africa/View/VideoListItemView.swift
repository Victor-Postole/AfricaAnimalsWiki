//
//  VideoListItem.swift
//  Africa
//
//  Created by diseso software on 09.10.2024.
//

import SwiftUI

struct VideoListItemView: View {
    
    let video : Video
    
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbNail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }
            
            VStack(alignment: .leading, spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .fontWeight(.heavy)
                    .lineLimit(2)
            }
        }
    }
}

#Preview {
  
    
    if let videos: [Video] = try? Bundle.main.decode("videos.json") {
        
        VideoListItemView(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    } else {
        Text("Error loading animal data")
    }
}
