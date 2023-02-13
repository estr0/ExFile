
class AADao {
	private static AADao instance = new AADao();	//AADao 클래스가 메모리로 올라갈 때, 이 문장이 딱 한번! 실행됨.
	public static AADao getInstance() {
		return instance;
	}
	private AADao() { }
	void insert() { System.out.println("insert"); }
	void delete() { System.out.println("delete"); }
	void update() { System.out.println("update"); }
	
}

// ExSingleton.java : AADao클래스를 "싱글턴패턴"으로.
// 실행 : Run As - "Java Application" 선택
public class ExSingleton {
	public static void main(String[] args) {
		AADao obj = AADao.getInstance(); // getInstance() : 인스턴스(객체)를 하나 달라!
		obj.insert();

		obj = AADao.getInstance(); // getInstance() : 인스턴스(객체)를 하나 달라!
		obj.delete();
		
		obj = AADao.getInstance(); // getInstance() : 인스턴스(객체)를 하나 달라!
		obj.update();
	}
}
