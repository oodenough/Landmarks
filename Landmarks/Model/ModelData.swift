//
//  ModelData.swift
//  Landmarks
//
//  Created by Saul Goodman on 2/28/25.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("未在main bundle中找到\(filename)")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("无法从main bundle中加载\(filename): \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("无法将\(filename)解析为\(T.self):\n\(error)")
    }
}
