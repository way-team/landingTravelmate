package aiss.model.repository;

import java.security.InvalidParameterException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import aiss.model.Member;

public class MemberRepository {

	private static final Logger log = Logger.getLogger(MemberRepository.class.getName());
	
	private Map<String,Member> members;
	private static MemberRepository instance=null;
	private int index=0;			// Index to create contacts' identifiers.
	
	public static MemberRepository getInstance() {
		
		if (instance==null) {
			instance = new MemberRepository();
			instance.init();
		}
		
		return instance;
	}
	
	public void init() {
		members = new HashMap<String,Member>();
		index=0;

		addMember("Alicia Manzano", "Manager", "./images/alicia.png");
		addMember("Carmen Jara", "Front-end developer","./images/carmen.png");
		addMember("Angel Mármol", "Front-end developer", "./images/angel.png");
		addMember("Francisco Javier Abreu", "Front-end developer","./images/fran.png");
		addMember("Jose Daniel Solano", "Front-end developer", "./images/jd.png");
		addMember("David Iglesias", "Back-end developer", "./images/david.png");
		addMember("Javier Herraiz", "Back-end developer","./images/jh.png");
		addMember("Rubén Toro", "Back-end developer", "./images/ruben.png");
		addMember("Luís Rus", "Back-end developer", "./images/luis.png");
		addMember("Javier Rodriguez", "Back-end developer","./images/jr.png");
		addMember("Pablo Narvaez", "Back-end developer", "./images/pablo.png");
		addMember("Asén Rangelov", "Back-end developer", "./images/asen.png");
		
	}
	
	
	
	public Member addMember(String name, String telephone, String photo) {
		
		if(findByName(name)!=null){
			
			//log
			log.log( Level.SEVERE, "El nombre ya existe");
			throw new InvalidParameterException("Ya existe");
		}
		// Create random id
		String id = "c" + index;
		Member c = new Member(id, name, telephone, photo);
		members.put(id,c);
		index++;
		return c;
	}

	public Map<String,Member> getMembers() {
		return members;
	}

	

	public Member getMember(String id) {
		return members.get(id);
	}

	
	public Member findByName(String name){
		Member result=null;
		for(Member c:members.values()){
			if(c.getName().equals(name)){
				result=c;
				break;
			}
		}
		return result;
	}

}
