 //
 //  InfoViewController.swift
 //  TempConverter
 //
 //  Created by Irunya =} on 31/07/2021.
 //
 
 import UIKit
 
 class InfoViewController: UIViewController {
    
    
    @IBOutlet weak var tempLabel: UILabel!
    
    var tempUpdated: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "My Home Task!"
        
        tempLabel.text = tempUpdated
        
    }
    
 }
