package com.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.PlayerDao;
import com.spring.model.Player;

@Service
public class PlayerServiceImpl implements PlayerService {
	
	PlayerDao playerDao;
	
	@Autowired
	public PlayerServiceImpl(PlayerDao playerDao) {
		this.playerDao = playerDao;
	}


	@Override
	@Transactional
	public List<Player> getPlayers() {
		// TODO Auto-generated method stub
		
		return playerDao.getAllPlayers();
	}


	@Override
	@Transactional
	public void addPlayer(Player player) {
		// TODO Auto-generated method stub
		playerDao.savePlayer(player);
		
	}

}
