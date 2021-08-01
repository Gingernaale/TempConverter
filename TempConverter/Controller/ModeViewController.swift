//
//  ModeViewController.swift
//  TempConverter
//
//  Created by Irunya =} on 31/07/2021.
//

import UIKit

class ModeViewController: UIViewController {
    
    @IBOutlet weak var xLabel: UIButton!
    @IBOutlet weak var modeLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Mode Control"
        setLabel()
        self.modeLabel.layer.cornerRadius = 20
    }
    
    @IBAction func xTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func settingsTapped(_ sender: Any) {
        settingsOpen()
        
    }
    
    func settingsOpen() {
        guard let settingsURL = URL(string: UIApplication.openSettingsURLString)
        else {
            return
        }
        
        if UIApplication.shared.canOpenURL(settingsURL){
            UIApplication.shared.open(settingsURL, options: [:]) { success in
                print("Success: ", success)
            }
        }
    }
    
    func setLabel(){
        var text = "Unable to specify UI style"
        if self.traitCollection.userInterfaceStyle == .dark{
            text = "Dark Mode is On\nGo to settings to\nchange to Light Mode."
        }else{
            text = "Light Mode is On\nGo to settings to\nchange to Dark Mode."
        }
        textLabel.text = text
    }
}

extension ModeViewController{
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabel()
    }
}


