package myforum;

import java.util.Set;
import java.util.TreeSet;

public class TreeSetDemo {

	public static void main(String[] args) {
		// TreeSet����������compareTo������Ȼ�������Ƚ���������Ĵ�С ����ֵΪ�������� x.compareTo(y)
		// ����ֵΪ0 ˵��x=y ����ֵ>0 ˵��x>y ����ֵ<0 ˵��x<y
		//ʹ����Ȼ�����ǣ�ֻ����TreeSet�����������ͬ���͵Ķ���
		Set set = new TreeSet();
		set.add((new String("spring")));
		set.add("123");
		set.add((new String("autumn")));
		set.add((new String("winter")));
		System.out.println(set);
	}
}
