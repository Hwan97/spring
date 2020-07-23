
package egovframework.example.board.service.impl;

import java.util.Date;
import java.util.List;

import egovframework.example.board.service.EgovBoardService;
import egovframework.example.board.service.BoardDefaultVO;
import egovframework.example.board.service.BoardVO;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

/**
 * @Class Name : EgovBoardServiceImpl.java
 * @Description : Board Business Implement Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */

@Service("boardService")
public class EgovBoardServiceImpl extends EgovAbstractServiceImpl implements EgovBoardService {

	private static final Logger LOGGER = LoggerFactory.getLogger(EgovBoardServiceImpl.class);

	/** BoardDAO */
	// TODO ibatis 사용
	/*@Resource(name = "boardDAO")
	private BoardDAO boardDAO;*/
	// TODO mybatis 사용
	@Resource(name="boardMapper")
	private BoardMapper boardDAO;

	/** ID Generation */
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;

	/**
	 * 글을 등록한다.
	 * @param vo - 등록할 정보가 담긴 BoardVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	@Override
	public String insertBoard(BoardVO vo) throws Exception {
		LOGGER.debug(vo.toString());

		/** ID Generation Service */
		String id = egovIdGnrService.getNextStringId();
		vo.setId(id);
		LOGGER.debug(vo.toString());

		boardDAO.insertBoard(vo);
		return id;
	}

	/**
	 * 글을 수정한다.
	 * @param vo - 수정할 정보가 담긴 BoardVO
	 * @return void형
	 * @exception Exception
	 */
	@Override
	public void updateBoard(BoardVO vo) throws Exception {
		boardDAO.updateBoard(vo);
	}
	
	@Override
	public void counterBoard(BoardVO vo) throws Exception {
		boardDAO.counterBoard(vo);
	}
	
	/**
	 * 글을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 BoardVO
	 * @return void형
	 * @exception Exception
	 */
	@Override
	public void deleteBoard(BoardVO vo) throws Exception {
		boardDAO.deleteBoard(vo);
	}

	/**
	 * 글을 조회한다.
	 * @param vo - 조회할 정보가 담긴 BoardVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	@Override
	public BoardVO selectBoard(BoardVO vo) throws Exception {
		BoardVO resultVO = boardDAO.selectBoard(vo);
		System.out.println(resultVO);
		if (resultVO == null)
			throw processException("info.nodata.msg");		
		return resultVO;
	}

	/**
	 * 글 목록을 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 목록
	 * @exception Exception
	 */
	@Override
	public List<BoardVO> selectBoardList(BoardDefaultVO searchVO) throws Exception {		
		return boardDAO.selectBoardList(searchVO);
	}
	
	public List<BoardVO> selectBoardList1(BoardDefaultVO searchVO) throws Exception {		
		return boardDAO.selectBoardList1(searchVO);
	}
	
/*	private Date format(Date d) {
		
		return null;
	}*/
	/**
	 * 글 총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
	@Override
	public int selectBoardListTotCnt(BoardDefaultVO searchVO) {
		return boardDAO.selectBoardListTotCnt(searchVO);
	}
	
	@Override
	public BoardVO selectMainBoard(BoardVO vo) throws Exception {
		BoardVO resultVO = boardDAO.selectMainBoard(vo);
		System.out.println(resultVO);
		if (resultVO == null)
			throw processException("info.nodata.msg");		
		return resultVO;
	}

}
