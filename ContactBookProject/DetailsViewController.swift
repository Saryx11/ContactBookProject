//
//  DetailsViewController.swift
//  ContactBookProject
//
//  Created by Benjamin LOUIS on 24/10/2017.
//  Copyright © 2017 Benjamin LOUIS. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Details"
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressDelete(_ sender: Any) {
        let alertController = UIAlertController(title: "Supprimer", message: "Voulez vous vraiment supprimer ce contact?", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Non", style: .cancel){action in
        }
        alertController.addAction(cancelAction)
        let okAction = UIAlertAction(title: "Oui", style: .default){action in
            self.navigationController?.popViewController(animated: true)
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
