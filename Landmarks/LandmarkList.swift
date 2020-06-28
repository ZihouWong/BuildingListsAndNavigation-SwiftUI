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
                NavigationLink(destination: LandmarkDetail()) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
        
    }
}

struct LandmarkList_Prewviews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
