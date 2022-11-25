//
//  FoodItemTableViewCell.swift
//  CustomTableView
//
//  Created by Hà Quang Hưng on 25/11/2022.
//

import UIKit

class FoodItemTableViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var contentImageView: UIImageView!
    
    @IBOutlet weak var labelCountry: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func bindata(_ item : Food) {
        labelName.text = item.name
        labelCountry.text = item.country
        imageView?.image = UIImage(named: item.image)
    }

}
