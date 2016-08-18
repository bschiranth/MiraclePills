//
//  ViewController.swift
//  MiraclePills
//
//  Created by Chiranth Bangalore Sathyaprakash on 8/16/16.
//  Copyright © 2016 Chiranth Bangalore Sathyaprakash. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDataSource , UIPickerViewDelegate{

    //////////
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var pillLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    
    @IBOutlet weak var dividerView: UIView!
    
    @IBOutlet weak var fnameLabel: UILabel!
    @IBOutlet weak var fnameFieild: UITextField!
    
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var streetField: UITextField!
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityField: UITextField!
    
    @IBOutlet weak var stateLabel: UILabel!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryField: UITextField!
    
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBAction func buyNowBtn(_ sender: AnyObject) {
        pillImage.isHidden = true
        pillLabel.isHidden = true
        moneyLabel.isHidden = true
        dividerView.isHidden = true
        fnameLabel.isHidden = true
        fnameFieild.isHidden = true
        streetLabel.isHidden = true
        streetField.isHidden = true
        cityLabel.isHidden = true
        cityField.isHidden = true
        stateLabel.isHidden = true
        //countryLabel.isHidden = true
      //  countryField.isHidden = true
        statePickerButton.isHidden = true
        successMessage.isHidden = false
        
        self.buyNowBtn.isHidden = true
    
    // better way - for subview in view.subview{subview.ishidden = true}
    
    }
    
    //////////
    
    
    
    @IBOutlet weak var statePickerButton: UIButton!
    
    @IBAction func statePickerButton(_ sender: AnyObject) {
        statePicker.isHidden = false
    }
    
    @IBOutlet weak var successMessage: UIImageView!
    
    @IBOutlet weak var statePicker: UIPickerView!
    

    
    
    var states = ["Alabama",
                  "Alaska",
                  "Arizona",
                  "Arkansas",
                  "California",
                  "Colorado",
                  "Connecticut",
                  "Delaware",
                  "Florida",
                  "Georgia",
                  "Hawaii",
                  "Idaho",
                  "Illinois",
                  "Indiana",
                  "Iowa",
                  "Kansas",
                  "Kentucky",
                  "Louisiana",
                  "Maine",
                  "Maryland",
                  "Massachusetts",
                  "Michigan",
                  "Minnesota",
                  "Mississippi",
                  "Missouri",
                  "Montana",
                  "Nebraska",
                  "Nevada",
                  "New Hampshire",
                  "New Jersey",
                  "New Mexico",
                  "New York",
                  "North Carolina",
                  "North Dakota",
                  "Ohio",
                  "Oklahoma",
                  "Oregon",
                  "Pennsylvania",
                  "Rhode Island",
                  "South Carolina",
                  "South Dakota",
                  "Tennessee",
                  "Texas",
                  "Utah",
                  "Vermont",
                  "Virginia",
                  "Washington",
                  "West Virginia",
                  "Wisconsin",
                  "Wyoming"]
    


    override func viewDidLoad() {
        super.viewDidLoad()
   
        //initialize data source and delegate
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        statePickerButton.setTitle(states[row], for: UIControlState())//UIcontroldstate.normal
        statePicker.isHidden = true
    }

}

