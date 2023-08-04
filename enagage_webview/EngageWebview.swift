//
//  EngageWebview.swift
//  enagage_webview
//
//  Created by admin on 8/3/23.
//

import UIKit
import Foundation

public class EngageWebview{
    public init() {}
    
    public static func getEngageWebviewViewController(webURL : String, titleText : String) -> UIViewController{
        let bundle = Bundle(for: EngageWebviewController.self)
        let vc = EngageWebviewController(nibName: "EngageWebviewController", bundle: bundle)
        vc.titleText = titleText
        vc.webviewURL = webURL
        return vc
    }
}
