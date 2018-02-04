//
//  P2Papi.swift
//  TD Wallet
//
//  Created by Biqing Qiu on 2/3/18.
//  Copyright © 2018 Three Sigma. All rights reserved.
//

import Foundation
func register() {
    let headers = [
        "Content-Type": "application/json",
        "Accept": "application/json",
        "X-Api-Key": "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJzdGV2ZXJlbjE4MCIsImV4cCI6MTUxODU1Nzc5Nn0.djCbO-nRQpbAzRe970oP_QfXsrTkQfP_XUdqW4enasVT9CRFnIZT90Hb0wG-XaHvtMDPsbw01IS8RAu7Asxtnw",
        "Authorization": "Bearer aae00d98-0645-3ccf-b651-4a856e38c05f",
        "Cache-Control": "no-cache",
        "Postman-Token": "d2c9644e-1291-0103-db34-107a75b808fa"
    ]

    let request = NSMutableURLRequest(url: NSURL(string: "https://api-wufthacks.xlabs.one:8243/td/p2p/sendmoney/V1.0.0/online/p2p/enroll?accountNumber=54764057431711")! as URL,
                                      cachePolicy: .useProtocolCachePolicy,
                                      timeoutInterval: 10.0)
    request.httpMethod = "POST"
    request.allHTTPHeaderFields = headers

    let session = URLSession.shared
    let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
        if (error != nil) {
            print(error)
        } else {
            let httpResponse = response as? HTTPURLResponse
            print(httpResponse)
        }
    })

    dataTask.resume()

}
