//
//  EngageWebviewController.swift
//  enagage_webview
//
//  Created by admin on 8/3/23.
//

import Foundation
import WebKit

class EngageWebviewController : UIViewController, WKUIDelegate {
   var webView: WKWebView!
    var titleText = ""
    var webviewURL = ""
    
   override func viewDidLoad() {
      super.viewDidLoad()
       
       view.backgroundColor = .white
       navigationItem.title = titleText.uppercased()
       
       let myURL = URL(string:webviewURL)
      let myRequest = URLRequest(url: myURL!)
      webView.load(myRequest)
   }
       
       
   override func loadView() {
      let webConfiguration = WKWebViewConfiguration()
       webConfiguration.websiteDataStore = WKWebsiteDataStore.default()
       webConfiguration.preferences.javaScriptCanOpenWindowsAutomatically = true
       webConfiguration.allowsInlineMediaPlayback = true
       
       webConfiguration.preferences.setValue(true, forKey: "javaScriptEnabled")
       webConfiguration.preferences.setValue(true, forKey: "loadsImagesAutomatically")
       webConfiguration.preferences.setValue(true, forKey: "allowFileAccessFromFileURLs")
       if #available(iOS 14.0, *) {
           webConfiguration.defaultWebpagePreferences.allowsContentJavaScript = true
       } else {
           webConfiguration.preferences.javaScriptEnabled = true
       }
      webView = WKWebView(frame: .zero, configuration: webConfiguration)
       
      webView.uiDelegate = self
      view = webView
   }
}


