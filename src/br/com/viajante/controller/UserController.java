package br.com.viajante.controller;

import java.util.ArrayList;
import java.util.List;

import br.com.viajante.entity.Anfitriao;

public class UserController {

	private static List<Anfitriao> users;
	
	static {
		users = new ArrayList<Anfitriao>();
		
		for(int i=0;i<10;i++){
			Anfitriao anfi = new Anfitriao("Diego", "diego@email.com", "(81)3333-3333", "Rua de teste", "São Paulo", "Brasil", "Hotel", "3", "Sem restrições", "Sem descrições");
			users.add(anfi);
		}
		
		for(int i=0;i<10;i++){
			Anfitriao anfi = new Anfitriao("Danilo", "danilo@email.com", "(81)3333-3333", "Rua de teste", "Curitiba", "Brasil", "Pousada", "5", "Sem restrições", "Sem descrições");
			users.add(anfi);
		}
		
		for(int i=0;i<10;i++){
			Anfitriao anfi = new Anfitriao("Larissa", "larissa@email.com", "(81)3333-3333", "Rua de teste", "Recife", "Brasil", "Pousada", "5", "Sem restrições", "Sem descrições");
			users.add(anfi);
		}
	}
	
	public void insert(Anfitriao anfitriao) {
		users.add(anfitriao);
	}
	
	public List<Anfitriao> list() {
		return users;
	}

	public void remove(Anfitriao anfitriao){
		if(users.contains(anfitriao)){
			users.remove(anfitriao);
		}
	}
	
	public void search(String citySearch){
		//usersSearch = new ArrayList<Anfitriao>();
		for (Anfitriao anfitriao: users)  
		{  
		  if (anfitriao.getCity().equalsIgnoreCase(citySearch))
		  {  
			 // usersSearch.add(anfitriao);
		  }  
		} 
	}
}