
# How to avoid string literal while registering and creating cell for tableVie

this repository is all about that how to avoid the string literal while registering the cell and dequeueing(Creating cell ) the cell in cell for row at Metthod


here the the step 
#Step 1

Add two file to your project 

1.UITableView+UITableViewCell which you can get it from extension fiolder in the above repository

 2.NibAndReuseIdentifier which you can get it from protocol folder n the above repository
 
 
 Now you are ready to use 
# 
 1.How to register xib's cell to our viewController 
 
   Note:- if you have created xib then there ia a need to register the cel to the tableView
 
  //register the cell to the tableView
  
  tableView.registerNib(TableViewCell.self) where  TableViewCell - name of cell's class
  
 # 2.How to register xib' for header and footer to our viewController 
  
   //registering the headerView to the tableView
   
    tableView.registerReusableHeaderFooterViewNib(TableViewHeaderClass.self). where TableViewHeaderClass - class of the header or footer
    
   # Now to dequeue cell in CellForAt method and to create object of headerView in viewForHeaderInSection method
   
     //creating object for the cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell : EmployeeDetailCell = tableView.dequeueReusableCell(for: indexPath) where EmployeeDetailCell - class of the cell
        
        cell.configure(self.viewModel.arrayEmployeeDetail[indexPath.row])
        
        return cell
        
    }
    
    
    
    
    # Now to create object of headerView in viewForHeaderInSection method
     
    //creating object for the header view
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    
        let header: EmployeeHeaderView = tableView.dequeueReusableHeaderFooterView(for: section) where  EmployeeHeaderView - class of xib
        
        return header
    }
