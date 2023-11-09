/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.chinookdb.controller;

import com.mycompany.chinookdb.model.Album;
import com.mycompany.chinookdb.model.Employee;
import com.mycompany.chinookdb.model.Track;
import com.mycompany.chinookdb.service.DbcpChinookService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author sho7
 */
@Controller
public class ChinookController {
    
    @Autowired
    private DbcpChinookService chinookService;
   
    @GetMapping("/index.htm")
    public String indexHandler() {
        return "index";
    }
    
    @GetMapping("/artists.htm")
    public String displayArtists(Model model) {
        model.addAttribute("artists", chinookService.getArtists());
        return "artists";
    }
    
    @GetMapping("/tracks.htm")
    public String displayTracks(Model model) {
        model.addAttribute("tracks", chinookService.getTracks());
        return "tracks";
    }
    
    @GetMapping("/albums.htm")
    public String displayAlbums(Model model) {
        model.addAttribute("albums", chinookService.getAlbums());
        return "albums";
    }
    
    @GetMapping("/customers.htm")
    public String displayCustomers(Model model) {
        model.addAttribute("customers", chinookService.getCustomers());
        return "customers";
    }
    
    @GetMapping("/employees.htm")
    public String displayEmployees(Model model) {
        model.addAttribute("employees", chinookService.getEmployees());
        return "employees";
    }
}
