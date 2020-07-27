//
//  ViewController.swift
//  asciidoctor
//
//  Created by Guillaume Grossetie on 20/07/2020.
//

import Cocoa
import SafariServices

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func openSafariSettings(_ sender: NSButton) {
        SFSafariApplication.showPreferencesForExtension(withIdentifier: "org.asciidoctor.asciidoctor.safari-extension") { (error) in
            if error != nil {
                NSLog("Error \(String(describing: error))");
                return;
            }
        }
    }
}

