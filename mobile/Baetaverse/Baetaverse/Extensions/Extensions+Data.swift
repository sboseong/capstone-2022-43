//
//  Extensions+Data.swift
//  Baetaverse
//
//  Created by JeongTaek Han on 2022/03/31.
//

import Foundation

extension Data {
    
    func decodeJSONData<T: Decodable>(to model: T.Type) throws -> T {
        let decoder = JSONDecoder()
        let decodedInstance = try decoder.decode(model.self, from: self)
        return decodedInstance
    }
    
}
