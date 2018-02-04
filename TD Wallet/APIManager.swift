//
//  APIManager.swift
//  TD Wallet
//
//  Created by Biqing Qiu on 2/3/18.
//  Copyright © 2018 Three Sigma. All rights reserved.
//

import UIKit
import Foundation

class APIManager: NSObject {
    static func register(accountNo: String) -> Int32{
        let headers = [
            "Content-Type": "application/json",
            "Accept": "application/json",
            "X-Api-Key": "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJzdGV2ZXJlbjE4MCIsImV4cCI6MTUxODU1Nzc5Nn0.djCbO-nRQpbAzRe970oP_QfXsrTkQfP_XUdqW4enasVT9CRFnIZT90Hb0wG-XaHvtMDPsbw01IS8RAu7Asxtnw",
            "Authorization": "Bearer 5d4e6723-0b16-311b-aafe-4e7593dc4cea",
            "Cache-Control": "no-cache",
            "Postman-Token": "42f0caef-a55a-f60e-12f1-df79b28e41d1"
        ]
        
        let request = NSMutableURLRequest(url: NSURL(string: "https://api-wufthacks.xlabs.one:8243/td/p2p/sendmoney/V1.0.0/online/p2p/enroll?accountNumber=" + accountNo)! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "POST"
        request.allHTTPHeaderFields = headers
        
        var status = 0
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error)
            } else {
                let httpResponse = response as? HTTPURLResponse
                status = (httpResponse?.statusCode)!
                print(status)
                print(httpResponse)
            }
        })
        dataTask.resume()
        
        sleep(4);
        print(status)
        if status == 200{
            return 1
        }
        else{
            return 0
        }
    }
}
