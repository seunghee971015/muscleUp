package com.kh.mybatis.board.model.service;


import java.util.ArrayList;
import java.util.HashMap;

import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.board.model.vo.BoardComment;
import com.kh.mybatis.board.model.vo.BoardImg;

import com.kh.mybatis.common.model.vo.PageInfo;

public interface BoardService {
	
	//게시판 리스트 조회
	public int selectListCount();
	public ArrayList<Board> selectList(PageInfo pi);
	
	//게시글 상세조회
	int increaseCount(int boardNo);
	Board selectBoard(int boardNo);
	ArrayList<BoardComment> selectCommentList(int boardNo);
	
	//게시글 검색
	int selectSearchCount(HashMap<String, String> map);
	public ArrayList<Board> selectSearchList(HashMap<String, String> map, PageInfo pi);
	
	//게시글 작성
	int insertBoard(Board b, BoardImg bImg);
	
	//게시글 수정
	BoardImg selectBoardImg(int boardNo);
	int updateBoard(Board b, BoardImg bImg);
	
	//게시글 삭제
	int deleteBoard(int boardNo);

}
