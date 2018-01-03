//
//  AddTaskViewController.swift
//  Todo list
//
//  Created by Sumit Ganju on 2018-01-03.
//  Copyright © 2018 Centennial College. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
   
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var isImp: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnTapped(_ sender: Any) {
        
     let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
     let task = Task(context: context)
     task.name = textField.text!
     task.isImportant = isImp.isOn
        
      //Save the data to coredata
        
    (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
    navigationController!.popViewController(animated: true)
        
    }
}
