package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.db.H2DatabaseConnection;
import com.pojo.Submissions;

import ch.qos.logback.classic.net.SyslogAppender;

@RestController
public class SearchController {
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public @ResponseBody Object initialRequest(@RequestParam(value = "page", defaultValue = "all") String page)
			throws IOException {
		H2DatabaseConnection connection = new H2DatabaseConnection();
		List<Submissions> submissions = new ArrayList<>();
		try {
			submissions = connection.insertWithStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return submissions.toArray();
	}

	@RequestMapping(value = "/stats", method = RequestMethod.POST)
	public @ResponseBody Object statusRequest(@RequestBody String query) throws IOException {
		H2DatabaseConnection connection = new H2DatabaseConnection();
		List<Submissions> submissions = new ArrayList<>();
		try {
			submissions = connection.insertWithStatement();
			//boolean anyMatch = submissions.stream().mapToO
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return submissions.toArray();
	}
}
