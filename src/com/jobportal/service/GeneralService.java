package com.jobportal.service;
import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

import com.jobportal.model.MailForm;
@Service
public class GeneralService {
	
	@Autowired
	private JavaMailSender mailSender;
	
	public void processSendMail(MailForm mailForm){
		MailInfo info=new MailInfo();
		info.toMail=mailForm.getToMail();
		info.subject=mailForm.getSubject();
		info.content=mailForm.getContent();
		
		String html="Mya Theint Job Search Website\n"+"http://localhost:8080/JobPortal_Final/";
		
		info.content+="\nSincerely,\n"+html;
		

		MimeMessagePreparator mp=getMessagePreparator(info);
		this.mailSender.send(mp);		
		
	}
	private MimeMessagePreparator getMessagePreparator(final MailInfo info){
		MimeMessagePreparator p=new MimeMessagePreparator() {			
			@Override
			public void prepare(MimeMessage mm) throws Exception {
				mm.setFrom(info.getFromMail());
				mm.setRecipient(Message.RecipientType.TO,
				new InternetAddress(info.getToMail()));
				mm.setSubject(info.getSubject());
				mm.setText(info.getContent());
			}
		};
		return p;
	}
	
	private class MailInfo{
		private String toMail;
		private String fromMail;
		private String subject;
		private String content;
		public String getToMail() {
			return toMail;
		}
		public void setToMail(String toMail) {
			this.toMail = toMail;
		}
		public String getFromMail() {
			return fromMail;
		}
		public void setFromMail(String fromMail) {
			this.fromMail = fromMail;
		}
		public String getSubject() {
			return subject;
		}
		public void setSubject(String subject) {
			this.subject = subject;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		
	}
	
	
	
	
}
