//
//  FoodDetailViewController.swift
//  CustomTableView
//
//  Created by Hà Quang Hưng on 25/11/2022.
//

import UIKit

class FoodDetailViewController: UIViewController {
    var item : Food?
    
    @IBOutlet weak var contentImageView: UIImageView!
    
    @IBOutlet weak var labelName: UITextField!
    
    @IBOutlet weak var labelCountry: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func back(_ sender: UIButton) {
        
        self.dismiss(animated: true)
    }
    
    private func setUpViews() {
        contentImageView.image = UIImage(named: item!.image)
        labelName.text = item?.name
        labelCountry.text = item?.country
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
