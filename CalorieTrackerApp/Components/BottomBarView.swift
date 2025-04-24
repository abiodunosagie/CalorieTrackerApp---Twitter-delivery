//
//  BottomBarView.swift
//  CalorieTrackerApp
//
//  Created by Abiodun Osagie on 24/04/2025.
//

import SwiftUI

struct BottomBarView: View {
    var body: some View {
        HStack(spacing: 0) {
            HStack(spacing: 30) {
                // First image inside a circle with padding and gray background
                Button {
                    
                } label: {
                    Image(systemName: "square.grid.2x2.fill")
                        .padding(12) // Padding inside the circle to create space
                        .background(Color.gray.opacity(0.2)) // Gray background for the circle
                        .clipShape(Circle()) // Makes the background a circle
                        .foregroundColor(.black) // Icon color
                }


                Button {
                    
                } label: {
                    Image(systemName: "clock")
                        .foregroundStyle(.gray.opacity(0.7))
                }

                Button {
                    
                } label: {
                    Image(systemName: "gearshape")
                        .foregroundStyle(.gray.opacity(0.7))
                }

            }
            .padding()
            .overlay(
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                            
                    )

            Spacer()
                .frame(width: 30)

            NavigationLink(destination: ArabView()) {
                ZStack {
                    Circle()
                        .fill(Color.black)
                        .frame(width: 60, height: 60)
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                }
            }
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 12)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
        )
       
        .padding(.horizontal) // Optional: keeps it from hugging screen edges
    }
}

#Preview {
    BottomBarView()
}
