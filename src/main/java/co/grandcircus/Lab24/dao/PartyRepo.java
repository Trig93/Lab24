package co.grandcircus.Lab24.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.Lab24.entity.Party;

public interface PartyRepo extends JpaRepository<Party, Long> {
	
	

}
