/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.chinookdb.model;

import org.springframework.stereotype.Component;

/**
 *
 * @author sho7
 */
@Component
public class Artist {
    private int artistId;
    private String Name;

    public Artist() {
    }

    public Artist(int artistId, String Name) {
        this.artistId = artistId;
        this.Name = Name;
    }

    public int getArtistId() {
        return artistId;
    }

    public void setArtistId(int artistId) {
        this.artistId = artistId;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }
    
}
