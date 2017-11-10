//
//  leagueVC.swift
//  App-Swoosh
//
//  Created by Ahmed Dsoky on 11/10/17.
//  Copyright © 2017 Ahmed Dsoky. All rights reserved.
//

import UIKit

class leagueVC: UIViewController {

    
    var player:Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }

 
    
    
    
    @IBAction func nextTaped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVC", sender: self)
    }
    
    
    
    
    
    @IBAction func mens(_ sender: Any) {
//        player.desierdLeague = "mens"
//        nextBtn.isEnabled = true
        selectLeague(leaguetype: "mens")
        
    }
    
    @IBAction func womens(_ sender: Any) {
//        player.desierdLeague = "women"
//        nextBtn.isEnabled = true
        selectLeague(leaguetype: "women")
        
    }
    
    
    
    @IBAction func chiled(_ sender: Any) {
//        player.desierdLeague = "child"
//        nextBtn.isEnabled = true
        selectLeague(leaguetype: "child")
        
    }
    
    
    func selectLeague(leaguetype:String){
        player.desierdLeague = leaguetype
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let SkillVC = segue.destination as? SkillVC{
            SkillVC.player = player
        }
    }

}
