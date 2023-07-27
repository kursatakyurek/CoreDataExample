//
//  MainTableViewCell.swift
//  CoreDataExample
//
//  Created by Kürşat Akyürek on 24.07.2023.
//

import UIKit

final class MainTableViewCell: UITableViewCell {
    
    @IBOutlet weak var firmaLabel: UILabel!
    
    @IBOutlet weak var sektorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

   
    }

}
