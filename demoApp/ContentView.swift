//
//  ContentView.swift
//  demoApp
//
//  Created by Sanjay Hartmann on 01.12.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ProgressView(value: 10, total: 20);
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapded").font(.caption);
                    Label("300", systemImage: "hourglass.tophalf.fill");
                }
                Spacer();
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining").font(.caption);
                    Label("700", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("X minutes")
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
