//
//  HomeViewController.swift
//  Login Example
//
//  Created by Ajit Kumar Baral on 1/3/17.
//  Copyright © 2017 Ajit Kumar Baral. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelSwitch: UILabel!
    
    
    @IBAction func sliderToggle(_ sender: UISlider) {
        let senderValue = lroundf(sender.value)
        label.text = "\(senderValue)"
    }
    
    
    @IBAction func segmentControlToggle(_ sender: UISegmentedControl) {
        
        let index = sender.selectedSegmentIndex
        
        if index == 0{
            label.text = "Private"
        }
        else{
            label.text = "Public"
        }
    }
    
    @IBAction func switchChange(_ sender: UISwitch) {
        if !sender.isOn{
            labelSwitch.text = "OFF"
        }
        else{
            labelSwitch.text = "ON"
        }
    }
    
}
