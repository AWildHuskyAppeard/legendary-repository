<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");
%>
<HTML>
<HEAD>
<BODY BGCOLOR="#FDF5E6">
<meta charset="UTF-8">
<TITLE></TITLE>
</HEAD>
<BODY>
<FORM ACTION="/AwesomeProject/QuesServletDS">
<H1 ALIGN="CENTER">後台管理系統</H1>
  題目編號  :  <INPUT TYPE="TEXT" NAME="Q_ID" PLACEHOLDER="請輸入題目編號  ex:1"><BR>
  題目種類  :  <INPUT TYPE="TEXT" NAME="Q_Type" PLACEHOLDER="請輸入題目種類  ex:choice"><BR>
  題　目　  :  <INPUT TYPE="TEXT" NAME="Q_Ques" PLACEHOLDER="請輸入題目  ex:玩具的日文為?"><BR>
  選　項　  :  <INPUT TYPE="TEXT" NAME="Q_Selection" PLACEHOLDER="請輸入選項  ex:1おもちゃ 2おさけ 3おいしい 4おしゃれ"><BR>
  正　解　  :  <INPUT TYPE="TEXT" NAME="Q_Ans" PLACEHOLDER="請輸入正確解答  ex:1"><BR>
  題目類別  :  <INPUT TYPE="TEXT" NAME="P_Class" PLACEHOLDER="請輸入題目類別  ex:Japanese"><BR><BR>
  
  <DIV>
    <INPUT NAME="UPDATE" TYPE="SUBMIT" VALUE="UPDATE">
    <INPUT NAME="DELETE" TYPE="SUBMIT" VALUE="DELETE">
    <INPUT NAME="CREATE" TYPE="SUBMIT" VALUE="CREATE">
    <INPUT NAME="AllQUERY" TYPE="SUBMIT" VALUE="BackStage">

    
  </DIV>
</FORM><BR>


</BODY>
</HTML>