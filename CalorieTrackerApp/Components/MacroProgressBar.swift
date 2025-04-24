//
//  MacroProgressBar.swift
//  CalorieTrackerApp
//
//  Created by Abiodun Osagie on 24/04/2025.
//

import SwiftUI

struct MacroProgressBar: View {
    let title: String
    let current: Int
    let total: Int
    let color: Color

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.system(size: 17, weight: .semibold))
                .foregroundStyle(.gray)
            HStack(spacing: 0) {
                Text("\(current) ")
                    .font(.caption2)
                    .foregroundColor(.black)
                Text("/ ")
                    .font(.caption2)
                    .foregroundColor(.gray)
                Text("\(total)")
                    .font(.caption2)
                    .foregroundColor(.gray)
                Spacer()
            }

            ProgressView(value: Float(current), total: Float(total))
                .progressViewStyle(LinearProgressViewStyle(tint: color))
                .frame(height: 6)
                .cornerRadius(3)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 1)
    }
}


#Preview {
    MacroProgressBar(
        title:"Protein",
        current:110,
        total:200,
        color:Color.red
    )
}
