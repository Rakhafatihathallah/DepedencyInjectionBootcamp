//
//  Injection.swift
//  DepedencyInjectionBootcamp
//
//  Created by Rakha Fatih Athallah on 30/07/23.
//

import Foundation
import Combine


class ProductionDataService {
    
    let url: URL = URL(string: "https://jsonplaceholder.typicode.com/posts")!
    
    func getData() -> AnyPublisher<[PostModel], Error> {
        URLSession.shared.dataTaskPublisher(for: url)
            .map({ $0.data })
            .decode(type: [PostModel].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
