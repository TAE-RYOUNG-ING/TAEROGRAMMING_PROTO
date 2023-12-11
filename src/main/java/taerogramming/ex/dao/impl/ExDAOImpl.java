package taerogramming.ex.dao.impl;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import taerogramming.ex.vo.ExVO;



@Repository
public class ExDAOImpl extends EgovComAbstractDAO{

	// 로거
	private static final Logger logger = LoggerFactory.getLogger(ExDAOImpl.class);
	
	// namespace 데이터 상수로 저장
	private static final String NAMESPACE = "LingLing";
	
	
	// ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ메서드 정의ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
	
	// 리스트
	public List<ExVO> readList() throws Exception {
		logger.info("########## readList() 호출");
//		return sqlSession.selectList(NAMESPACE + ".list");
		return selectList(NAMESPACE + ".list");
	}

	// 등록
	public void insert(ExVO vo) throws Exception {
		logger.info("########## insert() 호출");
		
		int result = insert(NAMESPACE + ".create", vo);
		if(result != 0) {
			logger.info("########## 글쓰기 완료");
		}
	}
	
	

	
}