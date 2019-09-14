//
//  ViewController.swift
//  ZomatoSearch
//
//  Created by Amirthy Tejeshwar on 07/09/19.
//  Copyright © 2019 Amirthy Tejeshwar. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /// TODO design Interactors and make a centralised networking calling seperately using Alamofire to make request easily
        
        let urlString = "https://developers.zomato.com/api/v2.1/search?entity_id=6"
        guard let url = URL(string: urlString) else { return }
        var urlRequest = URLRequest(url: url)
        urlRequest.addValue("26a8ad6f6001bd293eb60334d0b69d2b", forHTTPHeaderField: "user-key")
//        "user-key: 26a8ad6f6001bd293eb60334d0b69d2b"
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            
            guard let data = data else {
                print("Error inside guard let")
                return }
            do{
                print(data)
                let decoder = JSONDecoder()
                /// TODO decoding the response
                let searchResults = try? decoder.decode(Search.self, from: data)
                guard let search = searchResults else{ return }
                DispatchQueue.main.async {
                    print(search.resultsStart)
                    //self.updateWeatherDataWithModel(weatherStruct: weather)
                }
                
            }
            
        }.resume()
    }


}

