//
//  WeightAndGoalView.swift
//  CalorieTrackerApp
//
//  Created by Abiodun Osagie on 24/04/2025.
//

import SwiftUI

struct WeightAndGoalView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading){
                        Text("Your weight")
                            .font(.title2)
                            .padding(.bottom, 10)
                        HStack {
                            Text("69.2kg")
                                .font(.headline)
                            Spacer()
                            HStack {
                                Image(systemName: "arrow.down.right.circle.fill")
                                    .foregroundStyle(.green)
                                Text("0.2kg")
                                    .font(.system(size: 17, weight: .regular))
                            }
                        }
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 15)

                    // Placeholder for graph
                    Text("Graph - couldn't get the graph type.")
                        .lineLimit(3)
                        .font(.footnote)
                        .foregroundStyle(.gray)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .frame(height: 50)
                }
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.white)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                )
                .clipShape(RoundedRectangle(cornerRadius: 12)) // 🧼 smooth corners all the way


                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading) {
                        Text("Cutting goal")
                            .font(.caption)
                        HStack {
                            Text("65kg")
                                .font(.headline)
                            Spacer()
                            Text("4.2kg left")
                                .font(.caption2)
                                .foregroundColor(.gray)
                        }
                        ProgressView(value: 0.3)
                            .progressViewStyle(LinearProgressViewStyle(tint: .teal))
                            .frame(height: 6)
                    }
                    .padding()

                    Text("No giving up, right?")
                        .font(.caption2)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .frame(height: 50)
                }
                .frame(height: 130)
                .frame(width: 200) // or any fixed or flexible width
                .background(
                    RoundedRectangle(cornerRadius: 13)
                        .fill(Color.white)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 13)
                        .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                )
                .clipShape(RoundedRectangle(cornerRadius: 13)) // 🔥 smooths out those edges


            }
            .padding(.horizontal)
        }
    }
}



#Preview {
    WeightAndGoalView()
}
