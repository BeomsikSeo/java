package 상속응용;

public class 별이름스레드사용 {

	public static void main(String[] args) {
		// 2. 스레드 사용
		별스레드 별 = new 별스레드();
		이름스레드 이름 = new 이름스레드();
		감소스레드 감소 = new 감소스레드();
		증가스레드 증가 = new 증가스레드();
		
		// 3. 스레드 동시에 돌아가는 프로그램 시작
		증가.start();
		별.start();
		감소.start();
		이름.start();

	}

}
