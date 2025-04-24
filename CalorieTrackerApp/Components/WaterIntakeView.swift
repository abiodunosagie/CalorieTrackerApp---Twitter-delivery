//
//  WaterIntakeView.swift
//  CalorieTrackerApp
//
//  Created by Abiodun Osagie on 24/04/2025.
//

import SwiftUI

struct WaterIntakeView: View {
    var body: some View {
        HStack {
            Image(systemName: "drop.circle.fill")
                .font(.system(size: 30))
                .foregroundColor(.teal)
            VStack(alignment: .leading) {
                Text("Water Intake")
                    .font(.headline)
                    .foregroundStyle(.black.opacity(0.6))
                HStack(spacing: 0) {
                    Text("3.3L ")
                        .font(.caption)
                    Text("/ ")
                        .font(.caption)
                    Text("5.0L")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
            }
            Spacer()
            Button(action: {}) {
                Image(systemName: "plus.circle")
                    .font(.system(size: 30))
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray.opacity(0.4), lineWidth: 1)
        )
        .clipShape(RoundedRectangle(cornerRadius: 12)) // 💯 fixes any sharp edge leaks
        
    }
}


#Preview {
    WaterIntakeView()
}
