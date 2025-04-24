//
//  ContentView.swift
//  CalorieTrackerApp
//
//  Created by Abiodun Osagie on 24/04/2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 10) {
            DateSelectorView()
            Spacer()
                .frame(height: 20)
            HStack {
                CalorieMessageView()
                Spacer()
            }
            HStack(spacing: 10) {
                MacroProgressBar(
                    title: "Protein",
                    current: 110,
                    total: 200,
                    color: .red
                )
                MacroProgressBar(
                    title: "Fats",
                    current: 28,
                    total: 50,
                    color: .orange
                )
                MacroProgressBar(
                    title: "Carbs",
                    current: 20,
                    total: 100,
                    color: .green
                )
            }
            .padding()
            .background(.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 12))
           
            
            WeightAndGoalView()
                .padding(.bottom, 15)
            WaterIntakeView()
            Spacer()
            BottomBarView()
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
