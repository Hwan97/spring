/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.example.board.web;

import java.util.List;

import egovframework.example.board.service.EgovBoardService;
import egovframework.example.board.service.BoardDefaultVO;
import egovframework.example.board.service.BoardVO;

import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springmodules.validation.commons.DefaultBeanValidator;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;

/**
 * @Class Name : EgovBoardController.java
 * @Description : EgovBoard Controller Class
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

@Controller
public class EgovBoardController {

	/** EgovBoardService */
	@Resource(name = "boardService")
	private EgovBoardService boardService;

	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;

	/**
	 * 글 목록을 조회한다. (pageing)
	 * @param searchVO - 조회할 정보가 담긴 BoardDefaultVO
	 * @param model
	 * @return "egovBoardList"
	 * @exception Exception
	 */
//	@RequestMapping(value = "/main.do")
//	public String gotoMain(HttpServletRequest request) {
//		Device device = DeviceUtils.getCurrentDevice(request);
//		if(device.isMobile()) 		return "m/index";
//		else if(device.isTablet()) 	return "index";
//		else 						return "index";
//	}

	 	@RequestMapping(value = "/main.do")
		public String selectMainBoard(HttpServletRequest request, BoardVO boardVO, @ModelAttribute("searchVO") BoardDefaultVO searchVO, Model model) throws Exception {
			model.addAttribute("boardList", boardService.selectMainBoard(boardVO)); // check : 객체 설정, 리턴 되기 전에 처리 필수			
			Device device = DeviceUtils.getCurrentDevice(request);			
			if(device.isMobile()) 		 	return "m/index"; // check : 바로 return이 아니고 단순히 viewName만 처리			
			return "index";
		}
	
	@RequestMapping(value = {"/com_01.do", "/com_02.do", "/com_03.do", "com_04.do"})
	public String companyMapping(HttpServletRequest request, HttpServletResponse response) {
		Device device = DeviceUtils.getCurrentDevice(request);
	    if(request.getServletPath().equals("/com_01.do")) {
			if(device.isMobile())		return "m/company/com_01";
			else if(device.isTablet()) 	return "company/com_01";
			else						return "company/com_01";
	    	
	    }else if(request.getServletPath().equals("/com_02.do")) {
			if(device.isMobile())		return "m/company/com_02";
			else if(device.isTablet()) 	return "company/com_02";
			else						return "company/com_02";
	    	
	    }else if(request.getServletPath().equals("/com_03.do")) {
			if(device.isMobile())		return "m/company/com_03";
			else if(device.isTablet()) 	return "company/com_03";
			else						return "company/com_03";
	    	
	    }else if(request.getServletPath().equals("/com_04.do")) {
			if(device.isMobile())		return "m/company/com_04";
			else if(device.isTablet()) 	return "company/com_04";
			else						return "company/com_04";	
	    }
	    return "company/com_01";
	}
	
	@RequestMapping(value = {"/download"})
	public String downloadMapping(HttpServletRequest request, HttpServletResponse response) {
	    if(request.getServletPath().equals("/download.do")) {
	    	return "download/download";
	    }
	    return "download/download";
	}
	
	@RequestMapping(value = {"/pro_01", "/pro_02"})
	public String productMapping(HttpServletRequest request, HttpServletResponse response) {
		Device device = DeviceUtils.getCurrentDevice(request);
		if(request.getServletPath().equals("/pro_01.do")) {
			if(device.isMobile())		return "m/product/pro_01";
			else if(device.isTablet()) 	return "product/pro_01";
			else						return "product/pro_01";
	    }else if(request.getServletPath().equals("/pro_02.do")) {
			if(device.isMobile())		return "m/product/pro_02";
			else if(device.isTablet()) 	return "product/pro_02";
			else						return "product/pro_02";
	    }
		return "product/pro_01";
	}

	@RequestMapping(value = {"/egovBoardList.do", "/help_01"})
	public String selectBoardList(@ModelAttribute("searchVO") BoardDefaultVO searchVO, ModelMap model) throws Exception {

		/** EgovPropertyService.board */
		searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
		searchVO.setPageSize(propertiesService.getInt("pageSize"));

		/** pageing setting */
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
		paginationInfo.setPageSize(searchVO.getPageSize());

		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		List<?> boardList = boardService.selectBoardList(searchVO);
		model.addAttribute("resultList", boardList);

		int totCnt = boardService.selectBoardListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);
		
		totCnt = totCnt + 1; 
		
		model.addAttribute("totCnt", totCnt);
		

		return "customer_center/help_01";
	}

	/**
	 * 글 등록 화면을 조회한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovBoardRegister"
	 * @exception Exception
	 */
	@RequestMapping(value = "/addBoard.do", method = RequestMethod.GET)
	public String addBoardView(@ModelAttribute("searchVO") BoardDefaultVO searchVO, Model model) throws Exception {
		model.addAttribute("boardVO", new BoardVO());
		return "board/egovBoardRegister";
	}

     /**
	 * 글을 등록한다.
	  * @param boardVO - 등록할 정보가 담긴 VO
	  * @param searchVO - 목록 조회조건 정보가 담긴 VO
	  * @param status
 	  * @return "forward:/customer_center/help_01.do"
	  * @exception Exception
	 */
	
	@RequestMapping(value = "/addBoard.do", method = RequestMethod.POST)
	public String addBoard(@ModelAttribute("searchVO") BoardDefaultVO searchVO, BoardVO boardVO, BindingResult bindingResult, Model model, SessionStatus status)
			throws Exception {

		// Server-Side Validation
		beanValidator.validate(boardVO, bindingResult);

		if (bindingResult.hasErrors()) {
			model.addAttribute("boardVO", boardVO);
			return "board/egovBoardRegister";
		}

		boardService.insertBoard(boardVO);
		status.setComplete();
		return "forward:/customer_center/help_01.do";
	}
	
	/**
	 * 글 수정화면을 조회한다.
	  * @param id - 수정할 글 id
	  * @param searchVO - 목록 조회조건 정보가 담긴 VO
	  * @param model
	  * @return "egovBoardRegister"
	  * @exception Exception
	 */
	
	@RequestMapping("/updateBoardView.do")
	public String updateBoardView(@RequestParam("selectedId") String id, @ModelAttribute("searchVO") BoardDefaultVO searchVO, Model model) throws Exception {
		BoardVO boardVO = new BoardVO();
		boardVO.setId(id);
		boardService.counterBoard(boardVO);
		// 변수명은 CoC 에 따라 boardVO
		model.addAttribute(selectBoard(boardVO, searchVO));
		return "board/egovBoardRegister";
	}
	
	/**
	 * 글을 조회한다.
	 * @param boardVO - 조회할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return @ModelAttribute("boardVO") - 조회한 정보
	 * @exception Exception
	 */
	public BoardVO selectBoard(BoardVO boardVO, @ModelAttribute("searchVO") BoardDefaultVO searchVO) throws Exception {
		return boardService.selectBoard(boardVO);
	}

	/**
	 * 글을 수정한다.
	 * @param boardVO - 수정할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/customer_center/help_01.do"
	 * @exception Exception
	 */
		@RequestMapping("/updateBoard.do")
		public String updateSample(@ModelAttribute("searchVO") BoardDefaultVO searchVO, BoardVO sampleVO, BindingResult bindingResult, Model model, SessionStatus status)
				throws Exception {

			beanValidator.validate(sampleVO, bindingResult);

			if (bindingResult.hasErrors()) {
				model.addAttribute("sampleVO", sampleVO);
				return "sample/egovSampleRegister";
			}

			boardService.updateBoard(sampleVO);
			status.setComplete();
			return "forward:/egovSampleList.do";
		}

	/**
	 * 글을 삭제한다.
	 * @param boardVO - 삭제할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/customer_center/help_01.do"
	 * @exception Exception
	 */
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(BoardVO boardVO, @ModelAttribute("searchVO") BoardDefaultVO searchVO, SessionStatus status) throws Exception {
		boardService.deleteBoard(boardVO);
		status.setComplete();
		return "forward:/customer_center/help_01.do";
	}


}
