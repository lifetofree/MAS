package com.dev.mas.dao;

import java.util.List;

import com.dev.mas.model.Hosting;

public interface HostingDao {

	public List<Hosting> list();
	public Hosting listById(long id);
	
	public void save(Hosting hosting);

}
