package com.imooc.db;
import java.util.HashMap;
import java.util.Map;
import com.imooc.bean.Emp;
public class DBUtil {
   public static Map<String,Emp> map=new HashMap<String,Emp>();
   static {
	   map.put("101",new Emp("101","AA","123456","AA@imooc.com"));
	   map.put("102",new Emp("102","BB","123456","BB@imooc.com"));
	   map.put("103",new Emp("103","CC","123456","CC@imooc.com"));
	   map.put("104",new Emp("104","DD","123456","DD@imooc.com"));
	   map.put("105",new Emp("105","EE","123456","EE@imooc.com"));
	   map.put("106",new Emp("106","FF","123456","FF@imooc.com"));
   }
   
   //判断用户名和密码是否正确
   public static boolean selectEmpByAccountAndPassword(Emp emp) {
	   boolean flag=false;
	   for(String key:map.keySet()) {
		   Emp e=map.get(key);
		   
		   if (e.getAccount().equals(emp.getAccount())
				   && e.getPassword().equals(emp.getPassword())) {
			   flag=true;
			   break;
		   }
	   }
	   return flag;
   }
}
