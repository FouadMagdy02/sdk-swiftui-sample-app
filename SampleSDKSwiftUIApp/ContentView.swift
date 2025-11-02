//
//  ContentView.swift
//  SampleSDKSwiftUIApp
//
//  Created by Fouad Magdy on 02/11/2025.
//

import SwiftUI
import DoxterEkycSDK

struct ContentView: View {
    @State var isPresenting: Bool = false
    var body: some View {
        VStack {
            DoxterEKYCSdkButton(isPresenting: $isPresenting, sdkConfigData: .init(apiKey: "", endUser: "mada", region: Region.Europe)) { result in
                
            } label: {
                Text("Initialize SDK")
            } action: {
                isPresenting.toggle()
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
