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
    var timePickerDataSource: TimePickerDataSource!
    @IBOutlet weak var hourTimePicker: WKInterfacePicker!
    @IBOutlet weak var minuteTimePicker: WKInterfacePicker!
    @IBOutlet weak var selectedTimeLbl: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        timePickerDataSource = TimePickerDataSource(hoursPicker: hourTimePicker, minutesPicker: minuteTimePicker, interval: .minute)
        
        timePickerDataSource.selectedTimeDidUpdate = { [weak self] selectedTime in
            let timeFormatter = DateFormatter()
            timeFormatter.timeStyle = .short
            timeFormatter.dateStyle = .none
            self?.selectedTimeLbl.setText(timeFormatter.string(from: selectedTime))
        }
        
    }
    
    
    @IBAction func hourPickerDidUpdate(_ value: Int) {

    }
    
    override func pickerDidSettle(_ picker: WKInterfacePicker) {

    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
