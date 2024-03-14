package com.kh.finalkh11.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.finalkh11.repo.MainImgRepo;
import com.kh.finalkh11.repo.MatchBoardRepo;
import com.kh.finalkh11.vo.MainImgConnectVO;

@Controller
public class HomeController {
	
	@Autowired
	private MatchBoardRepo matchBoardRepo; 
	
	@Autowired
	private MainImgRepo mainImgRepo;

	@GetMapping("/")
	public String list(Model model,
			@RequestParam(required = false, defaultValue="matchBoardTitle") String column,
			@RequestParam(required = false, defaultValue="") String keyword) {
		
		List<MainImgConnectVO> mainImgList = mainImgRepo.mainImgList();
		
		if(keyword.equals("")) {
			model.addAttribute("list", matchBoardRepo.selectList());
		}
		else {
			model.addAttribute("column", column);
			model.addAttribute("keyword", keyword);
			model.addAttribute("list", matchBoardRepo.selectList(column, keyword));
		}
		
		model.addAttribute("mainImgList", mainImgList);
		
		
		return "matchBoard/list";
	}
	
	
}
