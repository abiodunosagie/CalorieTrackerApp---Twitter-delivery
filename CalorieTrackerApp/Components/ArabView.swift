//
//  ArabView.swift
//  CalorieTrackerApp
//
//  Created by Abiodun Osagie on 24/04/2025.
//

import SwiftUI

struct ArabView: View {
    // MARK: - PROPERTIES
    // Sample image names for the slider
    let images = ["arab1", "arab2", "arab3", "arab4", "arab5", "arab6", "arab7", "arab"]
    
    // Calculate half of the screen height
    let halfScreenHeight = UIScreen.main.bounds.height * 0.7
    let halfScreenHeightV = UIScreen.main.bounds.height * 0.3
    // MARK: - BODY
    var body: some View {
        ZStack {
            // Image slider
            VStack {
                ZStack(alignment: .top) {
                    TabView {
                        ForEach(images, id: \.self) { imageName in
                            Image(imageName)
                                .resizable()
                                .scaledToFill()
                                .clipped()
                                .ignoresSafeArea()
                        }
                        
                    }
                    
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .indexViewStyle(
                        PageIndexViewStyle(backgroundDisplayMode: .never))
                    .ignoresSafeArea()
                    HStack{
                        // Tags
                        HStack(spacing: 8) {
                            TagView(text: "Adventure")
                            TagView(text: "Ancient Monuments")
                                
                            Spacer()
                            // Rating
                            RatingView(rating: 4.8)
                        }
                    }//: chips at the top
                    .padding(.horizontal, 20)
                    
                }//: Image ZStack
                
                .frame(maxHeight: halfScreenHeight)
                VStack {
                    HStack(alignment: .top, spacing: 0) {
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Smith Osagie")
                                .font(.system(size: 25, weight: .semibold))
                                .foregroundStyle(.black.opacity(0.6))
                                .padding(.bottom, 10)
                            Text("May 1 - 6 • Business host")
                                .font(.callout)
                                .foregroundStyle(.gray)
                                .padding(.bottom, 10)
        
                            Text("A lost city carved in rose-colored stone\n, hidden in the majestic desert canyons.")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .lineLimit(2)
                                .padding(.bottom, 20)
                        }
                        Spacer()
                        Button(action: {}) {
                            Text("Top rated")
                                .font(.subheadline)
                                .foregroundColor(.black)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 6)
                                .background(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(
                                            Color.black.opacity(0.5),
                                            lineWidth: 1
                                        )
                                )
                        }
                        
                    }
                   
                    HStack {
                        Text("$139 / night")
                            .font(.title3)
                            .fontWeight(.semibold)
                        Spacer()
                        Button(action: {}) {
                            HStack {
                                Text("Book Now")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                Image(systemName: "arrow.up.right.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                            }
                            .padding(.horizontal, 5)
                            .padding(.vertical, 5)
                            .background(Color.black)
                            .clipShape(Capsule())
                        }
                    }
                }
                .padding(.horizontal, 20)
                .frame(maxHeight: halfScreenHeightV)
               
            }
               
            }
        .navigationBarBackButtonHidden()
            
            
        }
    }
    





// Reusable Tag View
struct TagView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.caption)
            .foregroundColor(.white)
            .padding(.horizontal, 7)
            .padding(.vertical, 9)
            .background(Color.gray.opacity(0.1))
            .clipShape(Capsule())
            .overlay(
                Capsule()
                    .stroke(Color.gray.opacity(0.3), lineWidth: 1) // Soft border
            )
    }
}



// Reusable Rating View
struct RatingView: View {
    let rating: Double
    
    var body: some View {
        HStack(spacing: 4) {
            Image(systemName: "star.fill")
                .foregroundColor(.white)
                .font(.caption)
            Text(String(format: "%.1f", rating))
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(.white.opacity(0.7))
        }
    }
}
// MARK: - PREVIEW
// Preview
struct ArabView_Previews: PreviewProvider {
    static var previews: some View {
        ArabView()
            .previewLayout(.sizeThatFits)
    }
}
