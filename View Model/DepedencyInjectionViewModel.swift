//
//  DepedencyInjectionViewModel.swift
//  DepedencyInjectionBootcamp
//
//  Created by Rakha Fatih Athallah on 30/07/23.
//

import Foundation
import Combine


// ViewModel yang akan digunakan untuk View nantinya
class DepedencyInjectionViewModel: ObservableObject {
    @Published var dataArray: [PostModel] = []
    let dataService: ProductionDataService
    var cancellables = Set<AnyCancellable>()
    
    init(dataService: ProductionDataService) {
        self.dataService = dataService
        loadPosts()
    }
    
    func loadPosts() {
        dataService.getData()
            .sink { _ in
                
            } receiveValue: { [weak self] returnedPosts in
                self?.dataArray = returnedPosts
            }
    }
}
