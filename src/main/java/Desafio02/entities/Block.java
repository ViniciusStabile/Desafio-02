package Desafio02.entities;

import java.time.Instant;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "tb_block")
public class Block {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	private Instant begin;
	@Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	private Instant finish;

	@ManyToMany
	@JoinTable(name = "tb_block_activity", joinColumns = @JoinColumn(name = "block_id"), inverseJoinColumns = @JoinColumn(name = "activity_id"))
	private Set<Activity> activities2 = new HashSet<>();

	public Block() {

	}

	public Block(Integer id, Instant begin, Instant finish) {
		this.id = id;
		this.begin = begin;
		this.finish = finish;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Instant getBegin() {
		return begin;
	}

	public void setBegin(Instant begin) {
		this.begin = begin;
	}

	public Instant getFinish() {
		return finish;
	}

	public void setFinish(Instant finish) {
		this.finish = finish;
	}

	public Set<Activity> getActivities2() {
		return activities2;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Block other = (Block) obj;
		return Objects.equals(id, other.id);
	}

}
