package co.grandcircus.Lab24.dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import co.grandcircus.Lab24.entity.PartyOption;

public interface PartyOptionRepo extends JpaRepository<PartyOption, Long> {
	
	@Query(value = "update PartyOption p set p.votes = p.votes + 1 where p.id = :id")
	@Modifying
	@Transactional
	public void addVote(Long id);

}
