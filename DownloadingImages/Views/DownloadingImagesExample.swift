//
//  DownloadingImagesExample.swift
//  DownloadingImages
//
//  Created by Zachary on 6/11/22.
//

// codable
// background threads
// weak self
// combine
// publishers and subscribers
// filemanager
// NSCache

import SwiftUI

struct DownloadingImagesExample: View {
    
    @StateObject var vm = DownloadingImagesViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.dataArray) { model in
                    DownloadingImagesRow(model: model)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Downloading Images")
        }
    }
}

struct DownloadingImagesExample_Previews: PreviewProvider {
    static var previews: some View {
        DownloadingImagesExample()
    }
}
