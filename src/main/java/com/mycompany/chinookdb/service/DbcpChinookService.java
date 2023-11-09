/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.chinookdb.service;

import com.mycompany.chinookdb.model.Album;
import com.mycompany.chinookdb.model.Artist;
import com.mycompany.chinookdb.model.Customer;
import com.mycompany.chinookdb.model.Employee;
import com.mycompany.chinookdb.model.Track;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

/**
 *
 * @author sho7
 */
@Service
public class DbcpChinookService {
    
    @Autowired
    private DataSource dataSource;
    
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }
    
    public List<Artist> getArtists() {
        String sql = "SELECT * FROM artists";
        return jdbcTemplate.query(sql, (rs, rowNum) -> new Artist(rs.getInt("ArtistId"), rs.getString("Name")));
    }
    
    public List<Track> getTracks() {
        String sql = "SELECT * FROM tracks";
        return jdbcTemplate.query(sql, (rs, rowNum) -> new Track(
            rs.getInt("trackId"),
            rs.getString("Name"),
            rs.getInt("albumId"),
            rs.getInt("mediaTypeId"),
            rs.getInt("genreId"),
            rs.getString("composer"),
            rs.getInt("milliSeconds"),
            rs.getInt("bytes"),
            rs.getFloat("unitPrice")
        ));
    }
    
    public List<Album> getAlbums() {
        String sql = "SELECT * FROM albums";
        return jdbcTemplate.query(sql, (rs, rowNum) -> new Album(
            rs.getInt("albumId"),
            rs.getString("title"),
            rs.getInt("artistId")
        ));
    }
    
    public List<Customer> getCustomers() {
        String sql = "SELECT * FROM customers";
        return jdbcTemplate.query(sql, (rs, rowNum) -> new Customer(
            rs.getInt("customerId"),
            rs.getString("firstName"),
            rs.getString("lastName"),
            rs.getString("company"),
            rs.getString("address"),
            rs.getString("city"),
            rs.getString("state"),
            rs.getString("country"),
            rs.getString("postalCode"),
            rs.getString("phone"),
            rs.getString("fax"),
            rs.getString("email"),
            rs.getInt("supportRepId")
        ));
    }
    
    public List<Employee> getEmployees() {
        String sql = "SELECT * FROM employees";
        return jdbcTemplate.query(sql, (rs, rowNum) -> new Employee(
            rs.getInt("employeeId"),
            rs.getString("lastName"),
            rs.getString("firstName"),
            rs.getString("title"),
            rs.getInt("reportsTo"),
            rs.getDate("birthDate"),
            rs.getDate("hireDate"),
            rs.getString("address"),
            rs.getString("city"),
            rs.getString("state"),
            rs.getString("postalCode"),
            rs.getString("phone"),
            rs.getString("fax"),
            rs.getString("email")
        ));
    }
}
