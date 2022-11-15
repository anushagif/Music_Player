//
//  Model.swift
//  Music_Player3
//
//  Created by Anusha on 14/11/22.
//

import Foundation

class Model{
    
    var SongName: String
    var SongArtist: String
    var playSong: String
   
    
    init(SongName: String, SongArtist: String, playSong: String) {
        self.SongName = SongName
        self.SongArtist = SongArtist
        self.playSong = playSong
       
    }
}
