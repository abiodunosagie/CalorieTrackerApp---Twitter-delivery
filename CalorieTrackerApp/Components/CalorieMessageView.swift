//
//  CalorieMessageView.swift
//  CalorieTrackerApp
//
//  Created by Abiodun Osagie on 24/04/2025.
//

import SwiftUI

struct CalorieMessageView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 6) {
                Image(systemName: "bolt.circle.fill")
                    .foregroundColor(.teal)
                    .font(.headline)
                Text("24 days streak")
                    .font(.system(size: 13, weight: .bold))
                    .foregroundColor(.black.opacity(0.7))
            }
            .padding(.vertical, 6)
            .padding(.horizontal, 12)
            .background(
                Capsule()
                    .fill(Color(.white)) // Pill background
            )
            .overlay(
                Capsule()
                    .stroke(
                        Color.gray.opacity(0.5),
                        lineWidth: 1
                    ) // Pill border (stroke)
            )
            .padding(.bottom, 10)

            Text("Have fun eating\nthe rest ")
                .font(.system(size: 30, weight: .semibold))
                .foregroundStyle(.gray.opacity(0.8)) +
            Text("200 calories")
                .font(.system(size: 30))
                .bold()
        }
       
    }
}

#Preview {
    CalorieMessageView()
}
