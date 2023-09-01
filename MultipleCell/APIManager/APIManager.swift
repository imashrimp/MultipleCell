//
//  APIManager.swift
//  MultipleCell
//
//  Created by 권현석 on 2023/09/01.
//

import Foundation

class APIManager {
    
    static let shared = APIManager()
    
    private init () { }
    
    func callRequest(completionHandler: @escaping (TrendingModel) -> Void ) {
        
        var components = URLComponents(string: "https://api.themoviedb.org/3/trending/all/week")
        let apiKey = URLQueryItem(name: "api_key", value: "1d7ad94b13a4d166b4543fb901b99b7f")
        
        components?.queryItems = [apiKey]
        
        guard let url = components?.url else { return }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            if let error = error {
                print(error)
                return
            }
            
            guard let response = response as? HTTPURLResponse,
                  (200...500).contains(response.statusCode) else {
                return
            }
            
            guard let data = data else { return }
            
            do {
                let result = try JSONDecoder().decode(TrendingModel.self, from: data)
                dump(result)
                completionHandler(result)
            } catch {
                print(error)
            }
        }.resume()
    }
}
