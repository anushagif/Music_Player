//
//  DetailedDisplaySongViewController.swift
//  Music_Player3
//
//  Created by Anusha on 14/11/22.
//

import UIKit
import AVFoundation

class DetailedDisplaySongViewController: UIViewController {
    
    var mList = MusicList()

    var audio: AVAudioPlayer?
    

    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var pauseBtn: UIButton!
    @IBOutlet weak var songNameDisplayPage: UILabel!
    @IBOutlet weak var songArtistDisplayPage: UILabel!
    
    
    var SongName:String = ""
    var SongArtist:String = ""
    public var songFile:String = ""
    var sIndex = 0
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songNameDisplayPage.text = SongName.uppercased()
        songArtistDisplayPage.text = SongArtist.uppercased()
        playSong()
        count = sIndex
    }
    
    @IBAction func btnPressed(_ sender: UIButton) {
        
        if(sender.tag == 1){
            sIndex = sIndex-1
            songFile = mList.musicList[sIndex].playSong
            playSong()

        }
        if(sender.tag == 2){
            
            audio?.pause()
            
        }
        if(sender.tag == 3){
            if(audio!.isPlaying){
                audio?.stop()
            }
            sIndex = sIndex+1
            songFile = mList.musicList[sIndex].playSong
            playSong()
            
        }
        
    }
    
    func playSong(){
        
        let url = Bundle.main.url(forResource: songFile , withExtension: ".mp3")
        do{
            audio = try AVAudioPlayer(contentsOf: url!)
            audio?.play()
            }

        catch{
            print(error)
        }
        
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
