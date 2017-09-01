package myforum;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

public class TreeMapDemo {

	public static void main(String[] args){
		System.out.println("��ʼ��");    
        
        Person person1 = new Person("������", 220181);  
        Person person2 = new Person("������", 220193);  
        Person person3 = new Person("��С��", 220186);  
          
        Map<Number, Person> map = new HashMap<Number, Person>();  
        map.put(person1.getId_card(), person1);  
        map.put(person2.getId_card(), person2);  
        map.put(person3.getId_card(), person3);  
          
        // HashMap  
        System.out.println("HashMap������");  
        for (Iterator<Number> it = map.keySet().iterator(); it.hasNext();) {  
            Person person = map.get(it.next());  
            System.out.println(person.getId_card() + " " + person.getName());  
        }  
          
        // TreeMap  
        System.out.println("TreeMap������");  
        TreeMap<Number, Person> treeMap = new TreeMap<Number, Person>();  
        treeMap.putAll(map);  
        for (Iterator<Number> it = treeMap.keySet().iterator(); it.hasNext();) {  
            Person person = treeMap.get(it.next());  
            System.out.println(person.getId_card() + " " + person.getName());  
        }  
          
        System.out.println("TreeMap������");  
        TreeMap<Number, Person> treeMap2 =   
            new TreeMap<Number, Person>(Collections.reverseOrder());  
        treeMap2.putAll(map);  
        for (Iterator it = treeMap2.keySet().iterator(); it.hasNext();) {  
            Person person = (Person) treeMap2.get(it.next());  
            System.out.println(person.getId_card() + " " + person.getName());  
        }  
          
        System.out.println("������");  
		
	}
}
