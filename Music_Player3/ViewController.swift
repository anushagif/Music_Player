//
//  ViewController.swift
//  Music_Player3
//
//  Created by Anusha on 14/11/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
  
    @IBOutlet weak var tableView: UITableView!
    
    var mList = MusicList()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return mList.musicList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"tableViewCell" , for: indexPath) as! SongTableViewCell
        cell.songName.text = mList.musicList[indexPath.row].SongName
        cell.songArtist.text = mList.musicList[indexPath.row].SongArtist
        return cell
       
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "DetailedDisplay") as! DetailedDisplaySongViewController
        vc.SongName = mList.musicList[indexPath.row].SongName
        vc.SongArtist = mList.musicList[indexPath.row].SongArtist
        vc.songFile = mList.musicList[indexPath.row].playSong
        vc.count = indexPath.row
        present(vc, animated: true)
        
        
        
    }


}

