<!doctype html><html xmlns="http://www.w3.org/1999/xhtml">
<%@ page import = "java.util.*,
		java.io.*"		
		pageEncoding="UTF-8"
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta name="Description" content="人人网 校内是一个真实的社交网络，联络你和你周围的朋友。 加入人人网校内你可以:联络朋友，了解他们的最新动态；和朋友分享相片、音乐和电影；找到老同学，结识新朋友；用照片和日志记录生活,展示自我。" />
<meta name="Keywords" content="Xiaonei,Renren,校内,大学,同学,同事,白领,个人主页,博客,相册,群组,社区,交友,聊天,音乐,视频,校园,人人,人人网" />
<meta name="msApplication-ID" content="App" />
<meta name="msApplication-PackageFamilyName" content="57722RenRenpreview.RenrenHD_fknrsfzqca1jw" /><link rel="shortcut icon" type="image/x-icon" href="http://a.xnimg.cn/favicon-rr.ico?ver=3" />
<link rel="apple-touch-icon" href="http://a.xnimg.cn/wap/apple_icon_.png" />
<script type="text/javascript">
XN = {get_check:'',get_check_x:'58a75e42',env:{domain:'renren.com',shortSiteName:'人人',siteName:'人人网'}};
try {
window.onerror=function(){
var a=arguments,e=encodeURIComponent,l=location,d=new Date();
if(a.length!=3||a[2]==0)return 1;
new Image().src=['http://s.renren.com/speedstats/jserror/stats.php?message='+e(a[0]),
'url='+e(a[1]),'lineNo='+a[2],'location='+e(l),'time='+d.toLocaleTimeString()].join('&');
return 1;
};
} catch (e){};
</script><meta charset="utf-8"/>
<link rel="shortcut icon" type="image/x-icon" href="http://a.xnimg.cn/favicon-rr.ico?ver=3" />
<link rel="apple-touch-icon" href="http://a.xnimg.cn/wap/apple_icon_.png" />
<link rel="stylesheet" type="text/css" href="http://s.xnimg.cn/a77186/nx/core/base.css">
<script type="text/javascript">
if(typeof nx === 'undefined'){
var nx = {};
}
nx.log = {
startTime : + new Date()
};
nx.user = {
id : "",
ruid:"",
tinyPic	: " ",
name : "",
requestToken : '',
_rtk : '58a75e42'
};nx.user.isvip = false;nx.user.hidead = false;nx.webpager = nx.webpager || {};
nx.production = true;
</script>
<script type="text/javascript" src="http://s.xnimg.cn/a76250/nx/core/libs.js"></script>
<script type="text/javascript">
define.config({map:{
"backbone":"http://s.xnimg.cn/a75208/nx/core/backbone.js",
"ui/draggable":"http://s.xnimg.cn/a70750/nx/core/ui/draggable.js",
"ui/menu":"http://s.xnimg.cn/a70736/nx/core/ui/menu.js",
"ui/resizable":"http://s.xnimg.cn/a70738/nx/core/ui/resizable.js",
"ui/sortable":"http://s.xnimg.cn/a70749/nx/core/ui/sortable.js",
"ui/tabs":"http://s.xnimg.cn/a73228/nx/core/ui/tabs.js",
"ui/ceiling":"http://s.xnimg.cn/a76297/nx/core/ui/ceiling.js",
"ui/columns":"http://s.xnimg.cn/a68070/nx/core/ui/columns.js",
"ui/dialog":"http://s.xnimg.cn/a76395/nx/core/ui/dialog.js",
"ui/fileupload":"http://s.xnimg.cn/a74996/nx/core/ui/fileupload.js",
"ui/pagination":"http://s.xnimg.cn/a70307/nx/core/ui/pagination.js",
"ui/placeholder":"http://s.xnimg.cn/a72095/nx/core/ui/placeholder.js",
"ui/progressbar":"http://s.xnimg.cn/a62964/nx/core/ui/progressbar.js",
"ui/rows":"http://s.xnimg.cn/a62964/nx/core/ui/rows.js",
"ui/scroll":"http://s.xnimg.cn/a61518/nx/core/ui/scroll.js",
"ui/scrollbar":"http://s.xnimg.cn/a76868/nx/core/ui/scrollbar.js",
"ui/select":"http://s.xnimg.cn/a76395/nx/core/ui/select.js",
"ui/slideshow":"http://s.xnimg.cn/a72804/nx/core/ui/slideshow.js",
"ui/speech":"http://s.xnimg.cn/a70256/nx/core/ui/speech.js",
"ui/textbox":"http://s.xnimg.cn/a76959/nx/core/ui/textbox.js",
"ui/tooltip":"http://s.xnimg.cn/a73228/nx/core/ui/tooltip.js",
"ui/renren/addfriend":"http://s.xnimg.cn/a76906/nx/core/ui/renren/addFriendLayer.js",
"ui/renren/at":"http://s.xnimg.cn/a76982/nx/core/ui/renren/at.js",
"ui/renren/commentCenter":"http://s.xnimg.cn/a73625/nx/core/ui/renren/commentCenter.js",
"ui/renren/emotion":"http://s.xnimg.cn/a76297/nx/core/ui/renren/emotion.js",
"ui/renren/friendgroup":"http://s.xnimg.cn/a62964/nx/core/ui/renren/friendGroup.js",
"ui/renren/friendListSelector":"http://s.xnimg.cn/a71270/nx/core/ui/renren/friendListSelector.js",
"ui/renren/like":"http://s.xnimg.cn/a73625/nx/core/ui/renren/like.js",
"nx/namecard":"http://s.xnimg.cn/a77146/nx/core/ui/renren/namecard.js",
"ui/renren/pagelayer":"http://s.xnimg.cn/a62964/nx/core/ui/renren/pageLayer.js",
"ui/renren/photoupload":"http://s.xnimg.cn/a75555/nx/core/ui/renren/photoupload.js",
"ui/renren/privacy":"http://s.xnimg.cn/a76680/nx/core/ui/renren/privacy.js",
"ui/renren/share":"http://s.xnimg.cn/a77048/nx/core/ui/renren/share.js",
"ui/renren/vocal":"http://s.xnimg.cn/a76393/nx/core/ui/renren/vocal.js",
"ui/renren/with":"http://s.xnimg.cn/a70613/nx/core/ui/renren/with.js",
"ui/clipboard":"http://s.xnimg.cn/a63417/nx/core/ui/clipboard.js",
"app/publisher":"http://s.xnimg.cn/a76959/nx/core/app/publisher.js",
"viewer":"http://s.xnimg.cn/a76389/nx/photo/viewer/js/viewer.js",
"media/player": "http://s.xnimg.cn/nx/photo/viewer/js/mediaplayer.js",
"ui/renren/like/commentseed":"http://s.xnimg.cn/a64636/nx/core/ui/renren/like.seed.comment.js",
"ui/renren/like/seed":"http://s.xnimg.cn/a62964/nx/core/ui/renren/like.seed.js",
"ui/renren/share/seed":"http://s.xnimg.cn/a62964/nx/core/ui/renren/share.seed.js",
"ui/renren/follow":"http://s.xnimg.cn/a73911/nx/core/ui/renren/follow.js",
"ui/autocomplete":"http://s.xnimg.cn/a70736/nx/core/ui/autocomplete.js",
"ui/showCommonFriend":"http://s.xnimg.cn/a63984/nx/core/ui/renren/showcommonfriend.js",
"photo/circler":"http://s.xnimg.cn/a73344/nx/photo/phototerminal/js/circler.js",
"ui/friendSearch":"http://s.xnimg.cn/a64338/nx/core/ui/renren/friendSearch.js",
"ui/renren/replyOption":"http://s.xnimg.cn/a68256/nx/core/ui/renren/replyOption.js",
"photo/avatarUpload": "http://s.xnimg.cn/a70628/nx/photo/upload-avata/js/avatarUpload.js"
}});
nx.data.isDoubleFeed = Boolean();
nx.data.isDoubleFeedGuide = Boolean();
</script>
<script type="text/javascript" src="http://s.xnimg.cn/a77186/nx/core/base.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript">
document.execCommand("BackgroundImageCache", false, true);
</script>
<![endif]--><script type="text/javascript">nx.webpager.disable = true;</script>
<link href="http://s.xnimg.cn/a72811/nx/apps/login/login.css" rel="stylesheet" type="text/css" media="all" />		
<title>人人网，中国领先的实名制SNS社交网络。加入人人网，找到老同学，结识新朋友。</title><script src="http://s.xnimg.cn/a72842/n/core/base-all2.js" type="text/javascript"></script>
</head>
<body id="syshome" class="login">
<div id="header">
<div id="navBar" class="site-nav rr">
<div class="navigation-wrapper">
<div class="navigation navigation-new clearfix">
<div id="logo2">
<h1>
<a href="http://www.renren.com" title="人人网 renren.com - 人人网校内是一个真实的社交网络，联系朋友，一起玩游戏">
<img alt="人人网 renren.com - 人人网校内是一个真实的社交网络，联系朋友，一起玩游戏" title="人人网 renren.com - 人人网校内是一个真实的社交网络，联系朋友，一起玩游戏" src="http://a.xnimg.cn/nx/apps/login/cssimg/logo-big.jpg" />
</a>
</h1>
</div>
<div class="nav-body clearfix">
<div class="nav-other">
<div class="menu">
<a href="http://st.renren.com" target="_blank" class="st-btn">学生团体申请入口</a>
</div>
<div class="menu">
<a id="reg_link" title="注册" stats="homenav_reg" href="/Renren/register.do?flag=regUI">注册</a>
</div>
<div class="menu">
<a title="给我们提建议" stats="homenav_suggest" href="http://support.renren.com/link/suggest">反馈意见</a>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div id="opi" class="page-wrapper clearfix">
<div class="full-page-holder">
<div class="full-page"><div class="login-page clearfix login-wrap">
<div class="side-column login-box">
<div class="login-panel ">
<div class="radiusimg">
<div class="shadow"></div>
<div class="pic"><img src="" id="personhead"/></div>
<!-- <img src="http://a.xnimg.cn/nx/apps/login/cssimg/person.jpg"> -->
</div>
<span id="errorMessage" class="errors_div" style="display:none;"></span>
<div class="yellow-error" id="yellow_error">
<a class="close" href="javascript:closeError();"></a>
<p class="wrong">您的用户名和密码不匹配</p>
<p class="worp">为了帐号安全，已向您的邮箱： <strong id="sendemail"></strong>发送了一封确认信，请通过邮件内链接登录。</p>
<p class="m-26"><a id="gotoEmail" href="#" target="_blank">打开邮箱查收确认信</a></p>
<p class="m-26"><a href="javascript:closeError();">重新输入</a></p>
</div>
<div class="yellow-error" id="account_stop">
<a class="close" href="javascript:closeStop();"></a>
<p class="wrong"></p>
<p class="center">您的帐号已停止使用，如有疑问请联系<a style="background:none;padding-left:0;" target="_blank" href="http://help.renren.com/#http://help.renren.com/support/contomvice?pid=2&selection={couId:193,proId:342,cityId:1000375}">客服</a></p>
</div>
<div class="yellow-error" id="account_lock">
<a class="close" href="javascript:closeLock();"></a>
<p class="wrong">您的帐号由于以下某种原因需要解锁才能登录</p>
<ol>
<li>删除过帐号</li>
<li>长时间没有登录网站</li>
<li>安全原因</li>
</ol>
<p class="center"><a href="http://safe.renren.com/relive.do">立即解锁</a></p>
</div>

<!--登录信息的表单-->
<!-- <form action="/Renren/login.do?flag=login" method="post">
	    <span class="font4">登录邮箱:</span><br/>
	    <input type="text"  name="email" /><br/> 
	    <span  class="font4">登录密码:</span><br/>
	    <input type="password" name="pwd" /><br/>
	    <input type="checkbox" /> 自动登录<br/>
	    <input type="submit" value="　登录　" class="sub" />
	    　<a href="#">找回密码</a>
</form> -->
<form action="/Renren/login.do?flag=login" method="post"  class="login-form">
  <table>	
	<dl class="top clearfix">
	<dd>
	<input type="text" name="email" class="input-text" id="email" tabindex="1" value="" />
	</dd>
	</dl>
	<dl class="pwd clearfix">
	<dd>
	<input type="password" id="password" name="pwd" error="请输入密码" class="input-text" tabindex="2"/>
	<label class="pwdtip" id="pwdTip" for="password">请输入密码</label>
	<a class="forgetPwd" id="forgetPwd" href="http://safe.renren.com/findPass.do" stats="home_findpassword">忘记密码？</a>
	</dd>
	</dl>
	<div class="caps-lock-tips" id="capsLockMessage" style="display:none"></div>
	<dl class="savepassword clearfix">
	<dt>
	<label title="为了确保您的信息安全，请不要在网吧或者公共机房勾选此项！" for="autoLogin" class="labelCheckbox">
	<input type="checkbox" name="autoLogin" id="autoLogin" value="true" tabindex="4" />下次自动登录
	</label>
	</dt>
	<dd>
	<span class="getpassword" id="getpassword"><a href="http://safe.renren.com/findPass.do" stats="home_findpassword">忘记密码？</a></span>
	</dd>
	</dl>
	<dl id="code" class="code clearfix">
	<dt><label for="code">验证码:</label></dt>
	<dd>
	<input id="icode" type="text" name="icode" class="input-text" tabindex="3" autocomplete="off" />
	<label class="codetip" id="codeTip" for="icode">请输入验证码</label>
	</dd>
	</dl>
	<dl id="codeimg" class="codeimg clearfix">
	<dt></dt>
	<dd><img id="verifyPic_login" src="http://icode.renren.com/getcode.do?t=web_login&rnd=Math.random()"/>
	</dd>
	<a class="changeone" href="javascript:refreshCode_login();" >换一个</a>
	</dl>
	<dl class="bottom">
	<input type="hidden" name="origURL" value="http://www.renren.com/home" />
	<input type="hidden" name="domain" value="renren.com" />
	<input type="hidden" name="key_id" value="1" />
	<input type="hidden" name="captcha_type" id="captcha_type" value="web_login" />
	<input type="submit" id="login" class="input-submit login-btn" stats="loginPage_login_button" value="登录" tabindex="5"/>
	</dl>
  </table>
</form>

<div class="regnow">
<input type="button" onclick="window.location='/Renren/register.do?flag=regUI'" id="regnow"  class="input-button login-btn regbutton" value="注册" tabindex="6" stats="loginPage_signUp_button" />
</div>
<div class="login_corp" >
<div class="login-word">其它帐号登录：</div>
<a  title="移动" class="login-item yidong" href="https://open.mmarket.com:443/omee-aus/services/oauth/authorize?responseType=code&scope=getUserInfo&clientId=300007884008&redirectUri=http%3A%2F%2Fwww.renren.com%2Fbind%2Fcnmobile%2FloginCallBack&clientState=9" id="login_cnmobile" stats="loginPage_baidu_link"></a>
<a title="天翼" class="login-item tianyi" id="login_tianyi" href="https://oauth.api.189.cn/emp/oauth2/authorize?app_id=296961050000000294&response_type=code&redirect_uri=http://www.renren.com/bind/ty/tyLoginCallBack" stats="loginPage_tianyi_link"></a>
<a title="360" class="login-item lo360" id="login_360" href="https://openapi.360.cn/oauth2/authorize?client_id=5ddda4458747126a583c5d58716bab4c&response_type=code&redirect_uri=http://www.renren.com/bind/tsz/tszLoginCallBack&scope=basic&display=default" stats="loginPage_360_link"></a>
<a title="百度" class="login-item baidu" href="https://openapi.baidu.com/oauth/2.0/authorize?response_type=code&client_id=foRRWjPq8In3SIhmKQw1Pep3&redirect_uri=http%3A%2F%2Fwww.renren.com%2Fbind%2Fbaidu%2FbaiduLoginCallBack" id="login_baidu" stats="loginPage_baidu_link"></a>
</div>
</div>
</div>
<div class="main-column">
<div id="mainRecommend" class="main-recommend">
<div id="ad100000000061"></div>
<script>
load_jebe_ads(1)
</script>
<div class="login-recommend clearfix">
<div class="intro">
<div class="item">
<a class="qrcode content" href="#nogo" target="_blank"></a>
</div>
<div class="item">
<a class="phone content" href="http://2014.renren.com/mobile#container4" target="_blank"></a>
</div>
<div class="item">
<a class="pad content" href="http://2014.renren.com/ipad" target="_blank"></a>
</div>
<div class="item">
<a class="other content" href="http://2014.renren.com/" target="_blank"></a>
</div>
</div>
</div>
</div>
</div>
</div></div>
</div>
</div> <div class="ft-wrapper clearfix">
<p>
<strong>玩转人人</strong>
<a href="http://page.renren.com/register/regGuide/" target="_blank">公共主页</a>
<a href="http://public.renren.com/" target="_blank">公众平台</a>
<a href="http://support.renren.com/helpcenter" target="_blank">客服帮助</a>
<a href="http://www.renren.com/siteinfo/privacy" target="_blank">隐私</a>
</p>
<p>
<strong>商务合作</strong>
<a href="http://page.renren.com/marketing/index" target="_blank">品牌营销</a>
<a href="http://bolt.jebe.renren.com/introduce.htm" class="l-2" target="_blank">中小企业<br />自助广告</a>
<a href="http://dev.renren.com/" target="_blank">开放平台</a>
</p>
<p>
<strong>公司信息</strong>
<a href="http://www.renren-inc.com/zh/product/renren.html" target="_blank">关于我们</a>
<a href="http://page.renren.com/gongyi" target="_blank">人人公益</a>
<a href="http://www.renren-inc.com/zh/hr/" target="_blank">招聘</a>
</p>
<p>
<strong>友情链接</strong>
<a href="http://www.jingwei.com/" target="_blank">经纬网</a>
<a href="http://wan.renren.com/" target="_blank">人人游戏</a>
<a href="http://fenqi.renren.com/" target="_blank">人人分期</a>
<a href="http://quxue.renren.com/" target="_blank">人人趣学</a>
</p>
<p>
<strong>人人移动客户端下载</strong>
<a href="http://mobile.renren.com/showClient?v=platform_rr&psf=42064" target="_blank">iPhone/Android</a>
<a href="http://mobile.renren.com/showClient?v=platform_hd&psf=42067" target="_blank">iPad客户端</a>
<a href="http://mobile.renren.com" target="_blank">其他人人产品</a>
</p>
<!--<p class="copyright-info">-->
<!-- 临时添加公司信息用 -->
<p class="copyright-info" style="margi-left: -20px">
<span>公司全称：北京千橡网景科技发展有限公司</span>
<span>公司电话：010-84481818</span>
<span>公司地址：北京市朝阳区酒仙桥中路18号<br>国投创意信息产业园北楼1层</span>
<span><img id="wenhuajingying_icon" style="height: 28px;float: left; margin-left: 60px;" src="http://s.xnimg.cn/imgpro/civilization/wenhuajingying.png"/><a href="http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/DFB957BAEB8B417882539C9B9F9547E6" target="_blank">京网文[2013]0136-030号</a></span>
<span><a href="http://www.miibeian.gov.cn/" target="_blank">京ICP证090254号</a></span>
<span>人人网&copy;2015</span>
<span><a href="#nogo" id="lawInfo">法律声明</a></span>
</p>
</div><script src="http://s.xnimg.cn/a76438/nx/apps/login/login.js" type="text/javascript" ></script>
</body>
</html>