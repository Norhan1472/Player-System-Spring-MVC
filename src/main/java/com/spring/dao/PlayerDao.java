package com.spring.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.model.Player;

public interface PlayerDao {
	
	public List<Player>getAllPlayers();
	public void savePlayer(Player palyer);
}
