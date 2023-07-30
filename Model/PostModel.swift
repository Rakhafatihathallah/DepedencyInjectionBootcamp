//
//  PersonModel.swift
//  DepedencyInjectionBootcamp
//
//  Created by Rakha Fatih Athallah on 30/07/23.
//

import Foundation

struct PostModel: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
