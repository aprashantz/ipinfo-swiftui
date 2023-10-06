import Foundation

class MyIPData{
    
    /// method to fetch data from IP
    static func getIPData(completion: @escaping (Result<IPInfoModel,Error>)->Void){
        let url = NetworkConstants.urlToGetIPData
        let session = URLSession.shared
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "GET"
        
        let task = session.dataTask(with: request){data,response, error in
            if let error = error{
                print("Error: \(error.localizedDescription)")
                completion(.failure(error))
            } else if let data = data{
                // parse data
                do{
                    let decoder = JSONDecoder()
                    let ipData = try decoder.decode(IPInfoModel.self, from: data)
                    completion(.success(ipData))
                } catch{
                    print("Could not parse data")
                    completion(.failure(error))
                }
            }
           
        }
        task.resume()
    }
}
