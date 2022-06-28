//
//  TimePickerDataSource.swift
//  ProjectFox_1 WatchKit Extension
//
//  Created by Zachary Ellis on 6/26/22.
//

import WatchKit

public class TimePickerDataSource {
    
    private weak var hoursPicker: WKInterfacePicker?
    private weak var minutesPicker: WKInterfacePicker?
    
    private let interval: SelectionInterval
    public var selectedTimeDidUpdate: ((Date) -> Void)?
    
    public enum SelectionInterval {
        case minute
        case fiveMinutes
        case fifteenMinutes
        case halfHour
        
        var minutesBetweenOptions: Int {
            switch self {
            case .minute: return 1
            case .fiveMinutes: return 5
            case .fifteenMinutes: return 15
            case .halfHour: return 30
            }
        }
    }
    
    public init(
        hoursPicker: WKInterfacePicker,
        minutesPicker: WKInterfacePicker,
        interval: SelectionInterval = .minute)
    {
        self.interval = interval
        self.hoursPicker = hoursPicker
        self.minutesPicker = minutesPicker

        setup()
    }
    
    
    private lazy var hourPickerOptions: [Int] = {
        return [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
    }()
    
    /// 0-60 minute entries
    private lazy var minutePickerOptions: [Int] = { (interval: SelectionInterval) in
        Array(repeating: Array(stride(from: 0, to: 60, by: interval.minutesBetweenOptions)), count: 1).flatMap { $0 }
    }(self.interval)
    
    

    private func setup() {
        hoursPicker?.setItems(hourPickerOptions.map { hourValue in
            let pickerItem = WKPickerItem()
            pickerItem.title = "\(hourValue)"
            return pickerItem
        })
        
        minutesPicker?.setItems(minutePickerOptions.map { minuteValue in
            let pickerItem = WKPickerItem()
            if "\(minuteValue)".count == 1 {
                pickerItem.title = "0\(minuteValue)"
            } else {
                pickerItem.title = "\(minuteValue)"
            }
            return pickerItem
        })
    }

}
