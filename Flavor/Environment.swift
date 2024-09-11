import Foundation

enum Environment {
    private static let infoDict: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("plist is not found")
        }
        return dict
    }()
    
    static let rootURL: URL = {
        guard let urlString = Environment.infoDict["Base_Url"] as? String else {
            fatalError("Base_Url is not found")
        }
        
        guard let url = URL(string: urlString) else {
            fatalError("Base_Url is invalid")
        }
        return url
    }()
    
    static let apiKey: String = {
        guard let key = Environment.infoDict["API_KEY"] as? String else {
            fatalError("Base_Url is not found")
        }
        return key
    }()
}
