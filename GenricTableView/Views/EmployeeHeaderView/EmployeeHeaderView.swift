//
//  EmployeeHeaderView.swift
//  Generics
//
//  Created by macmini47 on 15/04/21.
//

import UIKit

class EmployeeHeaderView: UITableViewHeaderFooterView {

    @IBOutlet fileprivate weak var labelId: UILabel!
    @IBOutlet fileprivate weak var labelName: UILabel!
    @IBOutlet fileprivate weak var labelDepartment: UILabel!

    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}
