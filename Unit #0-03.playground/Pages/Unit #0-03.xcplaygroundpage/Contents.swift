

// Created on: Sept-2018
// Created by: Ethan Bellem
// Created for: ICS3U
// This program will display name, city and country after clicking on a button
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let nameLabel : UILabel = UILabel()
    let cityLabel : UILabel = UILabel()
    let countryLabel : UILabel = UILabel()
    let clickmeButton : UIButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        //nameLabel.text = "Ethan Bellem"
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //cityLabel.text = "Ottawa"
        view.addSubview(cityLabel)
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cityLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20).isActive = true
        
        //countryLabel.text = "Canada"
        view.addSubview(countryLabel)
        countryLabel.translatesAutoresizingMaskIntoConstraints = false
        countryLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 10).isActive = true
        countryLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        clickmeButton.setTitle("Click Me", for: UIControlState.normal)
        clickmeButton.setTitleColor(.blue, for: .normal)
        clickmeButton.addTarget(self, action: #selector(showText), for: .touchUpInside)
        view.addSubview(clickmeButton)
        clickmeButton.translatesAutoresizingMaskIntoConstraints = false
        clickmeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        clickmeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -80).isActive = true
    }
    
    @objc func showText() {
        // show Hello, World!
        nameLabel.text = "Ethan Bellem"
        cityLabel.text = "Ottawa"
        countryLabel.text = "Canada"
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
