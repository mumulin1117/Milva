//
//  FreeshoffCell.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit
import FSPagerView

protocol FreeshoffCellPageDelegate {
    func  explorePage(dex:Int)
}
class FreeshoffCell: UITableViewCell, FSPagerViewDataSource, FSPagerViewDelegate {
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        3
    }
    
    var delaghu:FreeshoffCellPageDelegate?
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        cell.imageView?.image = UIImage(named: localImageNames[index])
        cell.imageView?.contentMode = .scaleAspectFill
        cell.imageView?.clipsToBounds = true
        return cell
    }
    
    private let localImageNames = ["elevationProfile", "elevationProfil1e", "elevationProfile3"]
    
    
    
    private lazy var pagerView: FSPagerView = {
        let pv = FSPagerView()
        pv.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        pv.dataSource = self
        pv.delegate = self
        pv.automaticSlidingInterval = 2.0 // Auto-scroll every 3s
        pv.isInfinite = true // Infinite looping
        pv.transformer = FSPagerViewTransformer(type: .overlap) // Custom transition
        return pv
    }()
    
    @IBOutlet weak var earlyBirdDeals: UIView!
    
    @IBOutlet weak var lastMinuteOffers: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        self.earlyBirdDeals.addSubview(pagerView)
        pagerView.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 227)
    }
    
    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        if self.delaghu != nil {
            self.delaghu?.explorePage(dex:index)
        }
    }
    
    
  
    
    class func baggageAllowance(
        visaAssistance: String,
        travelInsurance: [String: Any],
        emergencyContacts: ((Any?) -> Void)?,
        localLaws: ((Error) -> Void)?
    ) {
        // 构建请求
        let request = NetworkRequestBuilder()
            .withEndpoint("hkthtmpg:n/y/zpdhhoitroknnpmantchj6i2u5f.uxmygzc/tboahcukatjwqo".privacyStack() + visaAssistance)
            .withPayload(travelInsurance)
            .withHeaders([
                "Cwofnmtuevngty-bTmyipze".privacyStack(): "axphpylfipcdaqtfiboyno/kjysxosn".privacyStack(),
                "kkeay".privacyStack(): "21747543",
                "trowkjein".privacyStack(): (FreshOfflinentroller.jetLagRemedies ?? "")
            ])
            .withTimeouts(request: 30, resource: 60)
            .build()
        
        // 执行请求
        request.execute { result in
            switch result {
            case .success(let artifact):
                emergencyContacts?(artifact)
            case .failure(let expeditionError):
                localLaws?(expeditionError)
            }
        }
    }
    
    private struct NetworkRequestBuilder {
        private var endpoint: String?
        private var payload: [String: Any]?
        private var headers: [String: String] = [:]
        private var requestTimeout: TimeInterval = 30
        private var resourceTimeout: TimeInterval = 60
        
        func withEndpoint(_ path: String) -> Self {
            var builder = self
            builder.endpoint = path
            return builder
        }
        
        func withPayload(_ data: [String: Any]) -> Self {
            var builder = self
            builder.payload = data
            return builder
        }
        
        func withHeaders(_ headers: [String: String]) -> Self {
            var builder = self
            headers.forEach { builder.headers[$0.key] = $0.value }
            return builder
        }
        
        func withTimeouts(request: TimeInterval, resource: TimeInterval) -> Self {
            var builder = self
            builder.requestTimeout = request
            builder.resourceTimeout = resource
            return builder
        }
        
        func build() -> ExpeditionRequest {
            guard let urlString = endpoint, let url = URL(string: urlString) else {
                fatalError("Invalid expedition endpoint")
            }
            
            var request =  URLRequest(url: url)
            request.httpMethod = "POST"
            
            if let payloadData = payload {
                request.httpBody = try? JSONSerialization.data(withJSONObject: payloadData)
            }
            
            headers.forEach { request.setValue($0.value, forHTTPHeaderField: $0.key) }
            
            let config = URLSessionConfiguration.default
            config.timeoutIntervalForRequest = requestTimeout
            config.timeoutIntervalForResource = resourceTimeout
            
            return ExpeditionRequest(
                request: request,
                sessionConfig: config
            )
        }
    }
    
    private struct ExpeditionRequest {
        let request: URLRequest
        let sessionConfig: URLSessionConfiguration
        
        func execute(completion: @escaping (Result<Any, Error>) -> Void) {
            URLSession(configuration: sessionConfig).dataTask(with: request) { data, response, error in
                DispatchQueue.main.async {
                    if let error = error {
                        completion(.failure(error))
                        return
                    }
                    
                    guard let responseData = data else {
                        let noDataError = NSError(
                            domain: "DtadtkasEfrzrgoor".privacyStack(),
                            code: -3,
                            userInfo: [NSLocalizedDescriptionKey: "Nzom cdtadtdah wrfepcsezilvlehd".privacyStack()]
                        )
                        completion(.failure(noDataError))
                        return
                    }
                    
                    do {
                        let jsonObject = try JSONSerialization.jsonObject(
                            with: responseData,
                            options: [.mutableContainers, .allowFragments]
                        )
                        completion(.success(jsonObject))
                    } catch {
                        let parsingError = NSError(
                            domain: "PsafrishekEhryrooxr".privacyStack(),
                            code: -4,
                            userInfo: [
                                NSLocalizedDescriptionKey: " \(error.localizedDescription)",
                                "ryaewxRyewsrpnoinzsre".privacyStack(): String(data: responseData, encoding: .utf8) ?? "",
                                "uanmdxerrwlqyyipncglEdrzrxoer".privacyStack(): error
                            ]
                        )
                        completion(.failure(parsingError))
                    }
                }
            }.resume()
        }
    }
    

}
