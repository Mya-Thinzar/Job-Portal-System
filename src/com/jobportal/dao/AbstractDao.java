package com.jobportal.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.Date;
import java.util.List;import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class AbstractDao<PK extends Serializable,T> {
	@Autowired
	private SessionFactory sessionFactory;
	
	private final Class<T> persistentClass;
	
	@SuppressWarnings("unchecked")
	public AbstractDao(){
		this.persistentClass=(Class<T>)
				((ParameterizedType)this.getClass().getGenericSuperclass()).getActualTypeArguments()[1];
	}
	
	protected Session getSession(){
		return this.sessionFactory.openSession();
	}
	
	protected void closeSession(){
		this.sessionFactory.close();
	}
	
	@SuppressWarnings("finally")
	public boolean persistMtoM(T u){
		Session session=sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		boolean y=false;
		try{
			session.save(u);
			tr.commit();
			y=true;
		}catch(Exception e){
			tr.rollback();
			e.printStackTrace();
		}finally{
			if(session.isOpen()){
				session.close();
			}
			return y;
		}
	}
	
	@SuppressWarnings("finally")
	public Integer persist(T u){
		Session session=sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		Integer id=-1;
		
		try{
			id=(Integer)session.save(u);
			tr.commit();
		}catch(Exception e){
			tr.rollback();
			e.printStackTrace();
		}finally{
			if(session.isOpen()){
				session.close();
			}
			return id;
		}
	}
	
	public void persistVoid(T u){
		Session session=sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		try{
			session.save(u);
			tr.commit();
		}catch(Exception e){
			tr.rollback();
			e.printStackTrace();
		}finally{
			if(session.isOpen()){
				session.close();
				}
		}
	}
	public Boolean update(T entity){
		Session session=sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		Boolean y=false;
		try{
			session.update(entity);
			tr.commit();
			y=true;
		}catch(Exception e){
			tr.rollback();
			e.printStackTrace();
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
		return y;
	}
	
	public Boolean delete(T entity){
		Session session=sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		Boolean y=false;
		try{
			session.delete(entity);
			tr.commit();
			y=true;
		}catch(Exception e){
			tr.rollback();
			e.printStackTrace();
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
		return y;
	}
	
	public List<T> getAllEntity(){
		Session s=sessionFactory.openSession();
		CriteriaBuilder builder=s.getCriteriaBuilder();
		CriteriaQuery<T> query=builder.createQuery(persistentClass);
		Root<T> root=query.from(persistentClass);
		query.select(root);
		Query<T> q=s.createQuery(query);
		List<T> list=q.getResultList();
		s.close();
		return list;
	}
	
	public T criteriaQueryGetObjectById(int id,String strId){
		Session s=sessionFactory.openSession();
		CriteriaBuilder builder=s.getCriteriaBuilder();
		CriteriaQuery<T> query=builder.createQuery(persistentClass);
		Root<T> root=query.from(persistentClass);
		query.select(root);
		query.where(builder.equal(root.get(strId), id));
		Query<T> q=s.createQuery(query);
		List<T> list=q.getResultList();
		s.close();
		if(list.size()==0){
			return null;
		}
		return list.get(0);
	}
	
	public List<T> criteriaQueryObjectsById(int id,String strId){
		Session s=sessionFactory.openSession();
		CriteriaBuilder builder=s.getCriteriaBuilder();
		CriteriaQuery<T> query=builder.createQuery(persistentClass);
		Root<T> root=query.from(persistentClass);
		query.select(root);
		query.where(builder.equal(root.get(strId), id));
		Query<T> q=s.createQuery(query);
		List<T> list=q.getResultList();
		s.close();
		if(list.size()==0){
			return null;
		}
		else{
			return list;
		}
	}
	
	public T criteriaQueryGetObjectByName(String name,String strName){
		Session s=sessionFactory.openSession();
		Transaction tr=s.beginTransaction();
		CriteriaBuilder builder=s.getCriteriaBuilder();
		CriteriaQuery<T> query=builder.createQuery(persistentClass);
		Root<T> root=query.from(persistentClass);
		query.select(root);
		query.where(builder.equal(root.get(strName), name));
		Query<T> q=s.createQuery(query);
		List<T> list=q.getResultList();
		s.close();
		if(list.size()==0){
			return null;
		}else{
			return list.get(0);
		}
	}
	
	public List<T> criteriaQueryGetObjectsByName(String name,String strName){
		Session s=sessionFactory.openSession();
		Transaction tr=s.beginTransaction();
		CriteriaBuilder builder=s.getCriteriaBuilder();
		CriteriaQuery<T> query=builder.createQuery(persistentClass);
		Root<T> root=query.from(persistentClass);
		query.select(root);
		query.where(builder.equal(root.get(strName), name));
		Query<T> q=s.createQuery(query);
		List<T> list=q.getResultList();
		s.close();
		
		if(list.size()==0){
			return null;
		}else{
			return list;
		}
	}
	
	public List<T> criteriaQueryGetObjectsByDate(Date date,String strDate){
		Session s=sessionFactory.openSession();
		CriteriaBuilder builder=s.getCriteriaBuilder();
		CriteriaQuery<T> query=builder.createQuery(persistentClass);
		Root<T> root=query.from(persistentClass);
		query.select(root);
		query.where(builder.equal(root.get(strDate), date));
		Query<T> q=s.createQuery(query);
		List<T> list=q.getResultList();
		s.close();
		if(list.size()==0){
			return null;
		}else{
			return list;
		}
	}
	
	public T getObjectTwoParam(String password,String strPassword,String email, String strEmail){
		Session s=sessionFactory.openSession();
		CriteriaBuilder builder=sessionFactory.getCriteriaBuilder();
		CriteriaQuery<T> query=builder.createQuery(persistentClass);
		Root<T> root=query.from(persistentClass);
		query.select(root);
		query.where(builder.and(builder.equal(root.get(strPassword), password)),(builder.equal(root.get(strEmail), email)));
		Query<T> q=s.createQuery(query);
		List<T> list=q.getResultList();
		if(list.size()==0){
			return null;
		}
		else{
			return list.get(0);
		}
	}
	
	public String CreateQueryGetJobSeekerId(){
		Session session=sessionFactory.openSession();
		NativeQuery q=session.createSQLQuery("select max(jobseeker_id) from job_seeker_profile");
		String id =""+q.getResultList().get(0);
		session.close();
		System.out.println("pass id is "+id);
		if(id.isEmpty() || id.equals("null")){
			id="uid00000";
		}
		return id;
	}
	
	public String CreateQueryGetRecruiterId(){
		Session session=sessionFactory.openSession();
		NativeQuery q=session.createSQLQuery("select max(recruiter_id) from recruiter");
		String id =""+q.getResultList().get(0);
		session.close();
		System.out.println("pass id is "+id);
		if(id.isEmpty() || id.equals("null")){
			id="rid0000";
		}
		return id;
	}
	
	public Boolean SaveOrUpdate(T entity){
		Session session=sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		Boolean y=false;
		try{
			session.saveOrUpdate(entity);
			tr.commit();
			y=true;
		}catch(Exception e){
			tr.rollback();
			e.printStackTrace();
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
		return y;
	}
	
	
}
