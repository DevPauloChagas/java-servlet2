package br.com.alura.gerenciador.modelo;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {
	
	private static List<Empresa> listaEmpresas = new ArrayList<>();
	private static Integer chaveSequencial = 1;
	
	static {
		Empresa empresa = new Empresa();
		empresa.setId(chaveSequencial++);
		empresa.setNome("Alura");
		listaEmpresas.add(empresa);
		
		Empresa empresa1 = new Empresa();
		empresa1.setId(chaveSequencial++);
		empresa1.setNome("Caelum");
		listaEmpresas.add(empresa1);
	}

	public void adiciona(Empresa empresa) {
		empresa.setId(Banco.chaveSequencial++);
		listaEmpresas.add(empresa);
	}

	public static List<Empresa> getListaEmpresas() {
		return Banco.listaEmpresas;
	}

	public void remove(Integer id) {

		Iterator<Empresa> it = listaEmpresas.iterator();
		
		while(it.hasNext()) {
			Empresa emp = it.next();
			
			if(emp.getId() == id) {
				it.remove();
			}
		}
		
	}
		
//		for (Empresa empresa : listaEmpresas) {
//			if(empresa.getId() == id) {
//				listaEmpresas.remove(empresa);
//			}
//		}
		
	public Empresa buscaEmpresaPeloId(Integer id) {
		for (Empresa empresa : listaEmpresas) {
			if(empresa.getId() == id) {
				return empresa;
			}
		}
		return null;
	}
	
}
