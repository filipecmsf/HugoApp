//
//  Service.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation
import Alamofire

class Service {
    func request<T: Decodable>(url: String, model: T.Type, _ completion: @escaping ((ServiceResponse) -> Void)) {
        AF.request(url)
            .responseDecodable(of: model.self) { response in
                switch response.result {
                case .success(let success):
                    completion(.success(success))
                case .failure(let error):
                    #warning("HANDLE ERROR")
                    print(error)
                }
            }
    }
}
