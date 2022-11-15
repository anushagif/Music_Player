//
//  SongTableViewCell.swift
//  Music_Player3
//
//  Created by Anusha on 14/11/22.
//

import UIKit

class SongTableViewCell: UITableViewCell {
    
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var songArtist: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
