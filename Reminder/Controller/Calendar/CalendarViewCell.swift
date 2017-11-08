//
//  CalendarViewCell.swift
//  Reminder
//
//  Created by Felipe Melo on 11/7/17.
//  Copyright © 2017 Felipe Melo. All rights reserved.
//

import UIKit

class CalendarViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setupCell(title: String, time: String, description: String) {
        titleLabel.text = title
        timeLabel.text = time
        descriptionLabel.text = description
        
        self.backgroundImage.layer.cornerRadius = 10
    }
}
