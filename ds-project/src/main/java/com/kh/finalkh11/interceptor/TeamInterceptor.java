package com.kh.finalkh11.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.kh.finalkh11.dto.TeamDto;
import com.kh.finalkh11.repo.TeamRepo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class TeamInterceptor implements HandlerInterceptor {
	
	@Autowired
	private TeamRepo teamRepo;
	
//	@Override
//	public boolean preHandle(HttpServletRequest request, 
//			HttpServletResponse response, 
//			Object handler)
//			throws Exception {
//		
//		//팀 리더 여부 확인
//		int teamNo = Integer.parseInt(request.getParameter("teamNo"));
//		TeamDto teamDto = teamRepo.selectOne(teamNo);
//		String leader = teamDto.getTeamLeader();
//		
//		//현재 로그인 회원 확인
//		HttpSession session = request.getSession();
//		
//		//현재 로그인 회원의 등급 확인
//		String memberId = (String)session.getAttribute("memberId");
//		String memberLevel = (String)session.getAttribute("memberLevel");
//		
//		//팀 리더
//		boolean isOwner = memberId.equals(leader);
//		
//		//관리자
//		boolean isAdmin = memberLevel.equals("관리자");
//		
//		if(isAdmin || isOwner) {
//			if(request.getRequestURI().equals(request.getContextPath() + "/team/delete") || 
//					request.getRequestURI().equals(request.getContextPath() + "/team/edit")) {
//				return true;
//			}
//		}
//		
//		//조건에 해당하지 않는 경우는 모두 차단
//		response.sendError(403);
//		return false;
//	}
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
	    // 팀 번호 확인
	    String teamNoStr = request.getParameter("teamNo");
	    int teamNo;
	    try {
	        teamNo = Integer.parseInt(teamNoStr.trim());
	    } catch (NumberFormatException e) {
	        // 정수로 변환할 수 없는 경우 예외 처리
	        // 예를 들어, 오류 페이지로 리다이렉트하거나 다른 방법으로 처리
	        response.sendRedirect("errorPage");
	        return false;
	    }

	    // 팀 정보 조회
	    TeamDto teamDto = teamRepo.selectOne(teamNo);
	    if (teamDto == null) {
	        // 팀 정보가 없는 경우 예외 처리
	        // 예를 들어, 오류 페이지로 리다이렉트하거나 다른 방법으로 처리
	        response.sendRedirect("errorPage");
	        return false;
	    }

	    // 현재 로그인 회원 확인
	    HttpSession session = request.getSession();
	    String memberId = (String) session.getAttribute("memberId");
	    String memberLevel = (String) session.getAttribute("memberLevel");

	    // 팀 리더 여부 확인
	    String leader = teamDto.getTeamLeader();
	    boolean isOwner = memberId.equals(leader);

	    // 관리자 여부 확인
	    boolean isAdmin = "관리자".equals(memberLevel);

	    // 팀 삭제 또는 팀 수정 요청인 경우에만 처리
	    if (isAdmin || isOwner) {
	        String requestURI = request.getRequestURI();
	        String contextPath = request.getContextPath();
	        if (requestURI.equals(contextPath + "/team/delete") || requestURI.equals(contextPath + "/team/edit")) {
	            return true;
	        }
	    }

	    // 팀 삭제 또는 팀 수정 요청이 아닌 경우에는 접근 권한이 없음을 알리고 처리하지 않음
	    response.sendRedirect("accessDeniedPage");
	    return false;
	}

}