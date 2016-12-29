//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Erik Uecke on 12/28/16.
//  Copyright © 2016 Erik Uecke. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Lights Out Now")
        
        partyRocks.append(p1)
        
        let p2 = PartyRock(imageURL: "https://goo.gl/images/TtEH7A", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xGiBiHocSZM\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "New Thang")
        
        partyRocks.append(p2)
        
        let p3 = PartyRock(imageURL: "https://goo.gl/images/9Iz05l", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CdLhdrNgGu4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Let's Get Ridiculous")
        
        partyRocks.append(p3)
        
        let p4 = PartyRock(imageURL: "https://goo.gl/images/wAlvWm", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Juicy Wiggle")
        
        partyRocks.append(p4)
        
        let p5 = PartyRock(imageURL: "https://goo.gl/images/rt1u1e", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BgUvPw0OdU0?list=PLtM4rw7sjPKUe0YW6Fmrp2FSU7RxkX-JA\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Bring Out The Bottles")
        
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
            
        } else {
            return UITableViewCell()
        }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return partyRocks.count
        
    }
    


}

