//
//  sheetViewController.swift
//  DemoApp
//
//  Created by STC on 03/09/23.
//

import UIKit

class sheetViewController: UIViewController {

   @IBOutlet weak var checkboxBtn: UIButton!
 
    var flag = false
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  

    
    
    @IBAction func checkBoxbtn(_ sender: UIButton) {
        
        if (flag == false){
            sender.setBackgroundImage(UIImage(named: "checkempty"), for: UIControl.State.normal)
            flag = true
        }else{
            sender.setBackgroundImage(UIImage(named: "fillcheckbox"), for: UIControl.State.normal)
            flag = true
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
