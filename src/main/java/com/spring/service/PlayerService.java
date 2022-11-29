package com.spring.service;

import java.util.List;

import org.springframework.validation.BindingResult;

import com.spring.model.Player;

public interface PlayerService {

	public List<Player>getPlayers();
	
	public void addPlayer(Player player);
	
	public Player EditPlayer(long id);
	
	public void deletePlayer(long id);
}
