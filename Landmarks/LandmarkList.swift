//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Zihou Wong on 6/28/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
        
    }
}

struct LandmarkList_Prewviews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 11 Pro Max", "iPhone 11 Pro", "iPhone 8"], id: \.self) { deviceName in
            LandmarkList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
        
            
    }
}
