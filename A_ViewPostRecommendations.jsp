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
.style5 {color: #66CCFF;
font-size: 21px;
font-weight: bold;
}
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
          <h1 class="style23">All Recommendations on post <span class="style29"><%=request.getParameter("p_Name")%></span></h1>
          <%
          try
          {
            String p_Name = request.getParameter("p_Name");
            String m_Categorie = request.getParameter("categorie");
            String query1="select * from postrecommendtofriend where p_name='"+p_Name+"' ";
            Statement stt1 = connection.createStatement();
            ResultSet rss1 = stt1.executeQuery(query1);
            if(rss1.next())
            {
              String Keyword="",user="",p_Desc="",p_Desc1="",categorie="",rec_By="",rec_To="",rec_Details="",rec_date="";
              String strDate="",strTime="",dt="";
              int p_Rank = 0,p_Price=0,i = 0;

              String str="select * from posts where p_name='"+p_Name+"'";
              Statement st=connection.createStatement();
              ResultSet rs=st.executeQuery(str);

              if ( rs.next() )
              {
                i = rs.getInt(1);
                p_Price = rs.getInt(3);
                p_Desc = rs.getString(4);
                categorie = rs.getString(6);
                p_Rank = rs.getInt(7);
                String keyWord = "5765586965748666502846";
                keyWord = keyWord.substring(0, 16);
                byte[] keyValue = keyWord.getBytes();
                Key key = new SecretKeySpec(keyValue, "AES");
                Cipher c2 = Cipher.getInstance("AES");
                c2.init(Cipher.ENCRYPT_MODE, key);
                String ec = new String(Base64.encode(keyWord.getBytes()));
                p_Desc1 = new String(Base64.decode(p_Desc.getBytes()));
          %>
          </p>
          <table border="1" align="center" cellpadding="0" cellspacing="0" >
            <tr >
              <td width="160" rowspan="5" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                <div align="center"><a class="#" id="img1" href="#" >
                  <input name="image" type="image" src="post_Pic.jsp?id=<%=i%>" style="width:120px; height:120px;">
                </a> </div>
              </div></td>
              <td width="187" height="27" ><div align="center" class="style14 style9">
                <div align="center"><strong><span class="style17" style="color:#f69722">Post Name</span> </strong></div>
              </div></td>
              <td><div align="center" class="style98 style19"><strong><span class="style17"><%= p_Name%></span></strong></div></td>
            </tr>
            <tr/><div align="center"><strong>
            </tr>
            </strong>
            </div>

            <tr>
              <td width="187" height="27"><div align="center" class="style14 style9">
                <div align="center"><strong><span class="style17" style="color:#f69722">Categorie</span> </strong></div>
              </div></td>
              <td><div align="center" class="style98 style19"><strong><span class="style17"><%= categorie%></span></strong></div></td>
            </tr>
            <tr>
              <td width="187" height="27"><div align="center" class="style14 style9">
                <div align="center"><strong><span class="style17" style="color:#f69722">Rank </span> </strong></div>
              </div></td>
              <td><div align="center" class="style98 style19"><strong><span class="style17"><%= p_Rank%></span></strong></div></td>
            </tr>
            <tr>
              <td width="187" height="27"><div align="center" class="style9 style14"><span class="style17" style="color:#f69722"><strong>Description </strong></span></div></td>
              <td><div align="center" class="style19 style98"><span class="style17"><%= p_Desc1%></span></div></td>
            </tr>
            <tr> </tr>
            <tr>
              <td width="160" height="41" valign="middle" class="style12" style="color: #2c83b0;"><div align="left " class="style14 style15 style12 style9 style8" style="margin-left:20px;">
                <div align="center"><strong>Recommended By</strong></div>
              </div></td>
              <td width="187" height="41" valign="middle" class="style12" style="color: #2c83b0;" columnspan="2"><div align="left " class="style14 style15 style12 style9 style8" style="margin-left:20px;">
                <div align="center"><strong>Recommended To </strong></div>
              </div></td>
              <td width="140" height="41" valign="middle" class="style12" style="color: #2c83b0;" columnspan="2">&nbsp;</td>
            </tr>

            <%
            String str1="SELECT recommendfrom,recommendto FROM postrecommendtofriend where p_name='"+p_Name+"'";
            Statement st1=connection.createStatement();
            ResultSet rs1=st1.executeQuery(str1);
            while ( rs1.next() )
            {
              rec_By = rs1.getString(1);
              rec_To = rs1.getString(2);
            %>
            <tr>
              <td height="30"><div align="center" class="style98 style17 style16 style20 style19"><strong><%=rec_By%></strong></div></td>
              <td><div align="center" class="style98 style17 style16 style20 style19"><strong><%=rec_To%></strong></div></td>
              <td>&nbsp;</td>
            </tr>
            <%
              out.println("");
            }
            %>
            <tr>
              <td height="30"></td>
              <td></td>
              <td></td>
            </tr>
            <%
              }
            }
            else
            {
            %>
            <p class=" style9">No Recommendations Found on Post<span class="style12"> <%=p_Name%> <%=m_Categorie%></span></p>
            <div align="right"><a href="A_AllRecommendedPosts1.jsp?categorie=<%=m_Categorie%>">Back</a></div>
            <%
            }
            connection.close();
          }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
          %>
          </table>
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
