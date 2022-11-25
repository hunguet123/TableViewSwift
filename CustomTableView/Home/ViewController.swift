//
//  ViewController.swift
//  CustomTableView
//
//  Created by Hà Quang Hưng on 25/11/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var foodTableView: UITableView!
    
    var selectedItem : Food?
    
    var arrayDish = [Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg"),
                     Food(name: "pho bo", country: "vietNam", image: "bunbo.jpeg")
                     
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    //hàm này khi chuyển màn hình sẽ được gọi
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let foodDetailController = segue.destination as? FoodDetailViewController {
            foodDetailController.item = selectedItem
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayDish.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! FoodItemTableViewCell
        
        let item = arrayDish[indexPath.row]
        
        cell.bindata(item)
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("click")
        tableView.deselectRow(at: indexPath, animated: true)
        selectedItem = arrayDish[indexPath.item]
        self.performSegue(withIdentifier: "showFoodDetail", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.arrayDish.remove(at: indexPath.row)
            self.foodTableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}

