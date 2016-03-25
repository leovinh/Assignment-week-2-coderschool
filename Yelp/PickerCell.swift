//
//  PickerCell.swift
//  Yelp
//
//  Created by The Vinh Duong on 3/25/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

enum PickerCellType : Int {
    case distance = 0
    case sortby = 1
}

class PickerCell: UITableViewCell, UIPickerViewDelegate, UIPickerViewDataSource {

    
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var pickerData: [String] = []
    var cellType: PickerCellType = PickerCellType.distance
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        pickerView.dataSource = self
        pickerView.delegate = self
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        return pickerData.count
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return pickerData[row]
    }
    
}
