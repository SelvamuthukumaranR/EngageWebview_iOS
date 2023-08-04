
import UIKit
import Foundation

public struct EngageWebviewiOS {
    public init() {
    }
    
    public static func getEngageWebviewViewController(webURL : String, titleText : String) -> UIViewController{
        let bundle = Bundle(for: EngageWebviewController.self)
        let vc = EngageWebviewController(nibName: "EngageWebviewController", bundle: bundle)
        vc.titleText = titleText
        vc.webviewURL = webURL
        return vc
    }
}
