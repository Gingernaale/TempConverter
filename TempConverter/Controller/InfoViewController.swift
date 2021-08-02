 //
 //  InfoViewController.swift
 //  TempConverter
 //
 //  Created by Irunya =} on 31/07/2021.
 //
 
 import UIKit
 
 class InfoViewController: UIViewController {
    
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    var tempUpdated: String = ""
    var infoUpdated: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "My Home Task!"
        
        tempLabel.text = tempUpdated
        infoLabel.text = infoUpdated
    }
    
 }
