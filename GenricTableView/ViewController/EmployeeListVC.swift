//
//  ViewController.swift
//  GenricTableView
//
//  Created by macmini09 on 24/04/21.
//

import UIKit

class EmployeeListVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: EmployeeDetailViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configure()
    }
}

//MARK:-Custom Function
extension EmployeeListVC{
    func configure() {
        self.viewModel = EmployeeDetailViewModel()
       //set it from storyBoard
        //tableView.dataSource = self
        //tableView.delegate = self
        
        //register the cell to the tableView
        tableView.registerNib(EmployeeDetailCell.self)
        
        //registering the headerView to the tableView
        tableView.registerReusableHeaderFooterViewNib(EmployeeHeaderView.self)
        
        //setting it so that there should not be line / Separator in the empty space of the tableView
        tableView.tableFooterView = UIView ()
        
        //setting the dataSource reloading the tablevew
        self.viewModel.getEmployeeList {
            tableView.reloadData()
        }
    }
}

//MARK:- TableView Delegate and Datasource
extension EmployeeListVC:UITableViewDataSource, UITableViewDelegate{
    
    //tableView has the section we can give n number of section in which you set the number of rows
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //returning the number row which will be displayed
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.arrayEmployeeDetail.count
    }
    
    //creating object for the cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : EmployeeDetailCell = tableView.dequeueReusableCell(for: indexPath)
        cell.configure(self.viewModel.arrayEmployeeDetail[indexPath.row])
        return cell
    }
 
    //automatic height to the tableView
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
   //height of the header
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 48.0
    }
   //creating object for the header view
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header: EmployeeHeaderView = tableView.dequeueReusableHeaderFooterView(for: section)
        header.contentView.backgroundColor = .white
        return header
    }
}
