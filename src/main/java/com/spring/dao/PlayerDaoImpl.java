package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.Player;

@Repository
public class PlayerDaoImpl implements PlayerDao {

	@Autowired
	SessionFactory sessionFactory;
	
	@Autowired
	public PlayerDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	@Override
	public List<Player> getAllPlayers() {
		// TODO Auto-generated method stub

       Session session = sessionFactory.getCurrentSession();
		
		Query<Player> query = session.createQuery("from Player",Player.class);
		
		return query.getResultList();
	  
	}


	@Override
	public void savePlayer(Player palyer) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(palyer);
	}

}
