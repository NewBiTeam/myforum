package mcj.mail;

public class McjTest {
	public static void main(String[] args){     
        //�������Ҫ�������ʼ�     
     MailSenderInfo mailInfo = new MailSenderInfo();      
     mailInfo.setMailServerHost("smtp.163.com");      
     mailInfo.setMailServerPort("25");      
     mailInfo.setValidate(true);      
     mailInfo.setUserName("m136642169@163.com");      
     mailInfo.setPassword("m136642169");//������������      
     mailInfo.setFromAddress("m136642169@163.com");      
     mailInfo.setToAddress("136642169@qq.com");      
     mailInfo.setSubject("˧��");      
     mailInfo.setContent("�ڸ�ô�ӣ� ");    
        //�������Ҫ�������ʼ�     
     SimpleMailSender sms = new SimpleMailSender();     
       sms.sendTextMail(mailInfo);//���������ʽ      
       sms.sendHtmlMail(mailInfo);//����html��ʽ     
   }  
	
}
