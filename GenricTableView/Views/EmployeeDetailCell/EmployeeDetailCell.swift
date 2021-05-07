//
//  EmployeeDetailCell.swift
//  Generics
//
//  Created by macmini47 on 14/04/21.
//

import UIKit

//let kEmployeeDetailCellIdentifier = "EmployeeDetailCell"

class EmployeeDetailCell: UITableViewCell {
    @IBOutlet fileprivate weak var labelEmployeeId: UILabel!
    @IBOutlet fileprivate weak var labelEmployeeName: UILabel!
    @IBOutlet fileprivate weak var labelEmployeeDepartment: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    //Made it generic so that anyType object can be assigned
    func configure<T>(_ content: T) {
        guard let data = content as? EmployeeDetail else {
            return
        }
        self.labelEmployeeId.text = "\(data.id ?? 0)"
        self.labelEmployeeName.text = data.name ?? ""
        self.labelEmployeeDepartment.text = data.department ?? ""
    }
    
}
