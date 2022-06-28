//
//  InterfaceController.swift
//  ProjectFox_1 WatchKit Extension
//
//  Created by Zachary Ellis on 6/26/22.
//

import WatchKit
import Foundation
//import WatchTimePicker
class InterfaceController: WKInterfaceController {
    @IBOutlet weak var minutesLabel: WKInterfaceLabel!
    @IBOutlet weak var hourTimePicker: WKInterfacePicker!
    
    
    @IBOutlet weak var minuteTimePicker: WKInterfacePicker!
    
    
    @IBOutlet weak var hoursLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        
        super.awake(withContext: context)
        let rightPickerItems: [WKPickerItem] = minutesList.map {
            let pickerItem1 = WKPickerItem()
            pickerItem1.caption = $0.0
            pickerItem1.title = $0.1
            return pickerItem1
        }
        
        let leftPickerItems: [WKPickerItem] = hoursList.map {
                let pickerItem = WKPickerItem()
                pickerItem.caption = $0.0
                pickerItem.title = $0.1
                return pickerItem
            }
        
       
        minuteTimePicker.setItems(rightPickerItems)
        
        hourTimePicker.setItems(leftPickerItems)
        
        minutesLabel.setText("0 Minutes")

        hoursLabel.setText("0 Hours")
        
    }
    
    @IBAction func hourChanged(_ value: Int) {
        hoursLabel.setText("\(hoursList[value].1) hours")
    }
    
    @IBAction func minuteChanged(_ value: Int) {
        minutesLabel.setText("\(minutesList[value].1) minutes")
    }
    
    
    @IBOutlet weak var readyUpLbl: WKInterfaceButton!
    @IBAction func readyUp() {
    }
    
    override func pickerDidSettle(_ picker: WKInterfacePicker) {
        readyUpLbl.setHidden(false)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }
    
    
    var hoursList: [(String, String)] = [
            ("Hours", "0"),
            ("Hour", "1"),
            ("Hours", "2"),
            ("Hours", "3"),
            ("Hours", "4"),
            ("Hours", "5"),
            ("Hours", "6"),
            ("Hours", "7"),
            ("Hours", "8"),
            ("Hours", "9"),
            ("Hours", "10"),
            ("Hours", "11")]

    var minutesList: [(String, String)] = [
        ("Minutes", "0"),
        ("Minutes", "1"),
        ("Minutes", "2"),
        ("Minutes", "3"),
        ("Minutes", "4"),
        ("Minutes", "5"),
        ("Minutes", "6"),
        ("Minutes", "7"),
        ("Minutes", "8"),
        ("Minutes", "9"),
        ("Minutes", "10"),
        ("Minutes", "11"),
        ("Minutes", "12"),
        ("Minutes", "13"),
        ("Minutes", "14"),
        ("Minutes", "15"),
        ("Minutes", "16"),
        ("Minutes", "17"),
        ("Minutes", "18"),
        ("Minutes", "19"),
        ("Minutes", "20"),
        ("Minutes", "21"),
        ("Minutes", "22"),
        ("Minutes", "23"),
        ("Minutes", "24"),
        ("Minutes", "25"),
        ("Minutes", "26"),
        ("Minutes", "27"),
        ("Minutes", "28"),
        ("Minutes", "29"),
        ("Minutes", "30"),
        ("Minutes", "31"),
        ("Minutes", "32"),
        ("Minutes", "33"),
        ("Minutes", "34"),
        ("Minutes", "35"),
        ("Minutes", "36"),
        ("Minutes", "37"),
        ("Minutes", "38"),
        ("Minutes", "39"),
        ("Minutes", "40"),
        ("Minutes", "41"),
        ("Minutes", "42"),
        ("Minutes", "43"),
        ("Minutes", "44"),
        ("Minutes", "45"),
        ("Minutes", "46"),
        ("Minutes", "47"),
        ("Minutes", "48"),
        ("Minutes", "49"),
        ("Minutes", "50"),
        ("Minutes", "51"),
        ("Minutes", "52"),
        ("Minutes", "53"),
        ("Minutes", "54"),
        ("Minutes", "55"),
        ("Minutes", "56"),
        ("Minutes", "57"),
        ("Minutes", "58"),
        ("Minutes", "59")]
    
    
    
    
}
