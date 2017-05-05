//
//  ViewController.swift
//  Miracle Pills
//
//  Created by chuxiang zhou on 4/30/17.
//  Copyright © 2017 chuxiang zhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {
    
    
    
   @IBOutlet weak var statePicker: UIPickerView!
   @IBOutlet weak var statePickerBtn: UIButton!
   
    @IBOutlet weak var zipCode: UILabel!
   
    @IBOutlet weak var successBtn: UIButton!
    @IBOutlet weak var successIndicator: UIImageView!
   
    let states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "District of Columbia", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        zipCode.isHidden = true
        view.viewWithTag(2)?.isHidden = true
        successBtn.isHidden = true
          }
    
    @IBAction func successBtnP(_ sender: Any) {
     
        for view in self.view.subviews as [UIView] {
            view.isHidden = true
            if  view.tag == 1{
            view.isHidden = false
            view.isOpaque = true
            }
        }
       
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        zipCode.isHidden = false
        view.viewWithTag(2)?.isHidden = false
        successBtn.isHidden = false
        
    }
  }


