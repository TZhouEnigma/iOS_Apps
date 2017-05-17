//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by chuxiang zhou on 5/11/17.
//  Copyright © 2017 chuxiang zhou. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitleLbl: UILabel!
    
    private var _selectedSong:Array<Any>!
    
    var selectedSong:Array<Any>{
        get{
            return _selectedSong
        }set{
            _selectedSong = newValue
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songTitleLbl.text = _selectedSong![1] as! String
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
