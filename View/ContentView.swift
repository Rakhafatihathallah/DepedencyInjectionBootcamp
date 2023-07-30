//
//  ContentView.swift
//  DepedencyInjectionBootcamp
//
//  Created by Rakha Fatih Athallah on 30/07/23.
//

import SwiftUI

struct ContentView: View {
    
    //Dibuat sebagai type reference saja karena value reference nya akan dibuat nanti lewat init
    @StateObject private var vm: DepedencyInjectionViewModel
    
    //Injecting dataService to view
    init(dataService: ProductionDataService) {
        _vm = StateObject(wrappedValue: DepedencyInjectionViewModel(dataService: dataService))
    }
    
    var body: some View {
        ForEach(vm.dataArray) { post in
            VStack(alignment: .leading) {
                Text(post.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static let dataService = ProductionDataService()
    static var previews: some View {
        ContentView(dataService: dataService)
    }
}
