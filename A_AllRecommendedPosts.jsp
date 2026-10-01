<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View and Authorize Users..</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style4 {font-size: 12px}
.style7 {font-size: 25px}
.style86 {font-size: 13px}
.style97 {
color: #000000;
font-size: 14px;
}
.style98 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home </span></a></li>
          <li><a href="UserLogin.jsp">Users</a></li>
          <li class="active"><a href="AdminLogin.jsp">Admin </a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
        <h1 class="style4"><a href="#" class="style7">Tricolore Multi Behavior User Profiling for Enhanced Candidate Generation in Recommender Systems</a></h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider">
          <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /><span><big>Tricolore Multi Behavior User Profiling for Enhanced Candidate Generation in Recommender Systems</big></span></a>
          <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /><span><big>Tricolore Multi Behavior User Profiling for Enhanced Candidate Generation in Recommender Systems</big></span></a>
          <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /><span><big>Tricolore Multi Behavior User Profiling for Enhanced Candidate Generation in Recommender Systems</big></span></a>
        </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <%
          try
          {
            ArrayList a = new ArrayList();
            String str = "Select categorie from categories";
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(str);
            while(rs.next())
            {
              a.add(rs.getString(1));
            }
          %>
          </p>
          <p></p>
          <form action="A_AllRecommendedPosts1.jsp" method="post" id="form1">
            <div align="center" class="style1">
              <table width="321" border="0" align="left">
                <tr>
                  <td width="180" height="37"><div align="center" class="style8 style14 style98">Select Categorie </div></td>
                  <td width="131"><label>
                    <div align="center">
                      <select name="categorie">
                        <option selected="selected" >--Select--</option>
                        <% for(int i=0;i<a.size();i++)
                        {
                        %>
                        <option><%= a.get(i)%></option>
                        <%}%>
                      </select>
                    </div>
                  </label></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><label>
                    <input type="submit" name="Submit" value="View" />
                  </label></td>
                </tr>
              </table>
              <p>&nbsp;</p>
            </div>
          </form>
          </p>
          <%
          }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
          %>
          </p>
          <p align="center"><a href="AdminMain.jsp" class="style43 style21 style86 style97"><strong>Back</strong></a></p>
        </div>
        <div class="clr"></div>
      </div>
    </div>
    <div class="clr"></div>
  </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
