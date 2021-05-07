//
//  EmployeeDetailViewModel.swift
//  Generics
//
//  Created by macmini47 on 14/04/21.
//

import Foundation

final class EmployeeDetailViewModel {
    
    var arrayEmployeeDetail : [EmployeeDetail] = []

    func getEmployeeList(completionBlock: (() -> Void)) {
        arrayEmployeeDetail = [
            EmployeeDetail(id: 1, name: "Aadhar", department: "Mobile"),
            EmployeeDetail(id: 2, name: "Amitabh", department: "Mobile"),
            EmployeeDetail(id: 3, name: "Chayan", department: "Mobile"),
            EmployeeDetail(id: 4, name: "Naveen", department: "Mobile"),
            EmployeeDetail(id: 5, name: "Pankaj", department: "Mobile"),
            EmployeeDetail(id: 6, name: "Pushpendra", department: "Mobile"),
            EmployeeDetail(id: 7, name: "Sunil", department: "Mobile"),
            EmployeeDetail(id: 8, name: "Swapnil", department: "Mobile"),
            EmployeeDetail(id: 9, name: "Tejas", department: "Mobile"),
            EmployeeDetail(id: 10, name: "Arpit", department: "Mobile")
        ]
        completionBlock()
    }
}
