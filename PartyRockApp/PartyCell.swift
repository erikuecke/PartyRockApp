//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Erik Uecke on 12/28/16.
//  Copyright © 2016 Erik Uecke. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func updateUI(partyRock: PartyRock) {
        
        videoTitle.text = partyRock.videoTitle
        // TODO: set image from URL
        
    }

}
