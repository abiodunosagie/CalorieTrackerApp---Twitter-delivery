//
//  DateSelectorView.swift
//  CalorieTrackerApp
//
//  Created by Abiodun Osagie on 24/04/2025.
//

import SwiftUI

struct DateSelectorView: View {
    let dates = ["21", "22", "23", "24", "25", "26", "27", "28", "29"]
    let days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun", "Mon", "Tue"]
    @State private var selectedIndex = 2

    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(0..<dates.count, id: \.self) { index in
                        // LIMIT the GeometryReader height
                        GeometryReader { geo in
                            let distance = abs(selectedIndex - index)
                            let opacity = max(1.0 - Double(distance) * 0.3, 0.2)

                            VStack(spacing: 4) {
                                Text(dates[index])
                                    .font(.system(size: 16, weight: .semibold))
                                Text(days[index])
                                    .font(.caption)
                                    .foregroundStyle(.gray)
                            }
                            .padding()
                            .frame(width: index == selectedIndex ? 100 : 60,
                                   height: index == selectedIndex ? 70 : 60)
                            .background(
                                index == selectedIndex ? Color.white : Color.clear
                            )
                            .clipShape(
                                index == selectedIndex ?
                                    AnyShape(RoundedRectangle(cornerRadius: 30, style: .continuous)) :
                                    AnyShape(Circle())
                            )
                            .overlay(
                                index == selectedIndex ?
                                    AnyView(
                                        RoundedRectangle(cornerRadius: 35, style: .continuous)
                                            .stroke(Color.teal, lineWidth: 1)
                                    ) :
                                    AnyView(
                                        Circle()
                                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                    )
                            )
                            .opacity(opacity)
                            .onTapGesture {
                                withAnimation(.easeInOut) {
                                    selectedIndex = index
                                    proxy.scrollTo(index, anchor: .center)
                                }
                            }
                        }
                        .frame(width: index == selectedIndex ? 100 : 60, height: 80) // ✅ Height constrained here
                        .id(index)
                    }
                }
                .padding(.horizontal)
            }
        }
        .frame(height: 70) // ✅ This keeps the whole view from expanding vertically
    }
}





#Preview {
    DateSelectorView()
}
