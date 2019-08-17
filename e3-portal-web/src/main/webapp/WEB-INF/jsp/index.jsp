<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>星愿花店商城-星愿花店旗下全球美食优选网购商城-进口食品、母婴、营养保健品、生鲜、粮油、酒水饮料、休闲食品-星愿花店商城e3mall.cn</title>
    <meta name="Keywords" content="进口食品,网上超市,网上购物,进口奶粉,星愿花店商城,sfbest,母婴用品,营养保健品,生鲜食品,粮油,酒水,休闲食品">
    <meta name="Description"
          content="星愿花店商城星愿花店旗下全球美食优选网购商城，精选来自60多个国家和地区的进口食品，正品行货，支持货到付款。销售包括进口奶粉、母婴用品、营养保健品、生鲜食品、粮油、酒水、休闲食品等近万种商品。">
    <link rel="dns-prefetch" href="//pic.e3mall.cn">
    <meta property="wb:webmaster" content="3a008ad947166307">
    <link rel="stylesheet" type="text/css" href="/css/base_w1200.css?v=2016071333">
    <link rel="stylesheet" type="text/css" href="/css/index.css?v=2016071312">
    <script type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="/js/global_index.js"></script>
    <style id="style-1-cropbar-clipper">/* Copyright 2014 Evernote Corporation. All rights reserved. */
    .en-markup-crop-options {
        top: 18px !important;
        left: 50% !important;
        margin-left: -100px !important;
        width: 200px !important;
        border: 2px rgba(255, 255, 255, .38) solid !important;
        border-radius: 4px !important;
    }

    .en-markup-crop-options div div:first-of-type {
        margin-left: 0px !important;
    }
    </style>
</head>
<body>
<!-- header start -->
<jsp:include page="commons/header.jsp"/>
<jsp:include page="commons/mainmenu.jsp"/>
<!-- header end -->
<!----row1------->
<div class="slide_show" id="slide_show">
    <div class="indexW">
        <div id="index_slide" class="slide_wrap">
            <ol>
                <c:forEach items="${ad1List}" var="node" varStatus="status">
                    <li>
                        <a name="sfbest_hp_hp_focus_${status.index }" class="fore_pic trackref" href="${node.url }"
                           target="_blank">
                            <img id="lunbo_1" alt="${node.title }" src="${node.pic }">
                        </a>
                    </li>
                </c:forEach>
            </ol>
        </div>
        <div class="rSide">
            <a name="sfbest_hp_hp_focus_right-ad1" class="a-img r-img1 trackref" href="/html/activity/1472440858.html"
               target="_blank">
                <img alt="缘分" src="https://cdn.huaduocai.net/Storage/Shop/3/logo/10864589839887543.jpg">
                <div class="rmask"></div>
            </a>
            <a name="sfbest_hp_hp_focus_right-ad2" class="a-img r-img2 trackref" href="/html/activity/1472471068.html"
               target="_blank">
                <img s="" alt="缪思女神" src="https://cdn.huaduocai.net/Storage/Shop/3/logo/415761662335253.jpg">
                <div class="rmask"></div>
            </a>
            <a name="sfbest_hp_hp_focus_right-ad3" class="a-img r-img3 trackref" href="/html/activity/1473011294.html"
               target="_blank">
                <img alt="浪漫满屋" src="https://cdn.huaduocai.net/Storage/Shop/3/logo/415827520183366.jpg">
                <div class="rmask"></div>
            </a>
        </div>
    </div>
    <ul class="none" id="lunboNum">
        <c:forEach items="${ad1List }" varStatus="status">
            <li class="<c:if test="${status.index==0 }">cur</c:if>">${status.index+1 }</li>
        </c:forEach>
    </ul>
    <div class="indexbg" id="indexbg">
        <dl style="left: -1903px;">
            <dd style="width: 1903px; background: rgb(20, 16, 13);"></dd>
            <dd style="width: 1903px; background: rgb(119, 96, 86);"></dd>
            <dd style="width: 1903px; background: rgb(17, 12, 55);"></dd>
            <dd style="width: 1903px; background: rgb(239, 244, 248);"></dd>
            <dd style="width: 1903px; background: rgb(231, 32, 37);"></dd>
            <dd style="width: 1903px; background: rgb(128, 29, 92);"></dd>
            <dd style="width: 1903px; background: rgb(117, 144, 1);"></dd>
            <dd style="width: 1903px; background: rgb(253, 213, 29);"></dd>
        </dl>
    </div>
</div>
<!----row1 end------->
<!-- 口碑甄选 start -->
<div class="indexW mt1">
    <div class="bestbuy">
        <div class="b_left">
            <h2>优选必买<span></span></h2>
            <ul class="bbig" id="bigPerfect">
                <li class="price_list0" goods="215383" eid="b_215383_0" id="cx_b_215383_0"><a
                        href="#" title="爱情—不变的承诺" target="_blank">
                    <img class="lazy" src="/images/html/portal01.jpg" style="display: inline;"></a>
                    <div class="gBtn p-btn bbtn" style="top: 260px;">
                        <a pid="215383" data_url="http://p02.e3mall.cn/2016/1800215383/middle_1800215383_1_1/160x160.jpg"
                           href="javascript:void(0)" indexflag="1">加入购物车</a>
                    </div>
                    <div class="bprice" id="priceK_b_215383_0">
                        <span><sup>￥</sup></span>569
                    </div>
                </li>
                <li class="price_list0" goods="57111" eid="b_57111_0" id="cx_b_57111_0">
                    <a href="#" title="爱情-一往情深" target="_blank">
                        <img class="lazy" src="/images/html/portal02.jpg" style="display: inline;"></a>
                    <div class="gBtn p-btn bbtn" style="top: 260px;">
                        <a pid="57111" href="javascript:void(0)" indexflag="1">加入购物车</a>
                    </div>
                    <div class="bprice" id="priceK_b_57111_0">
                        <span><sup>￥</sup></span>239
                    </div>
                </li>
                <li class="price_list0" goods="5536" eid="b_5536_0" id="cx_b_5536_0">
                    <a href="#" title="爱情-一心一意" target="_blank">
                        <img class="lazy" alt="爱情-一心一意" src="/images/html/portal03.jpg" style="display: inline;"></a>
                    <div class="gBtn p-btn bbtn">
                        <a pid="5536" href="javascript:void(0)" indexflag="1">加入购物车</a>
                    </div>
                    <div class="bprice" id="priceK_b_5536_0">
                        <span><sup>￥</sup></span>139
                    </div>
                </li>
                <li class="price_list0" goods="12045" eid="b_12045_0"
                    id="cx_b_12045_0"><a
                        href="http://www.e3mall.cn/html/products/13/1800012045.html#trackref=sfbest_hp_hp_goods_big-item4"
                        title="爱情-甜美公主" target="_blank">
                    <img class="lazy" alt="爱情-甜美公主"  src="/images/html/portal04.jpg" style="display: inline;"></a>
                    <div class="gBtn p-btn bbtn">
                        <a pid="12045" href="javascript:void(0)" indexflag="1">加入购物车</a>
                    </div>
                    <div class="bprice" id="priceK_b_12045_0">
                        <span><sup>￥</sup></span>369
                    </div>
                </li>
            </ul>
            <ul class="bsmall" id="smallPerfect">
                <li class="price_list0" goods="37194" eid="b_37194_1"
                    id="cx_b_37194_1"><a
                        href="http://www.e3mall.cn/html/products/38/1800037194.html#trackref=sfbest_hp_hp_goods_small-item1"
                        title="爱情-恋恋情深" target="_blank"><img class="lazy"
                                                                    src="/images/html/portal05.jpg"
                                                                    style="display: inline;"></a>
                    <div class="gBtn p-btn bbtn" style="top: 210px;">
                        <a pid="37194"
                           data_url="http://p02.e3mall.cn/2014/1800037194/middle_1800037194_3_10/160x160.jpg"
                           href="javascript:void(0)" indexflag="1">加入购物车</a>
                    </div>
                    <div class="bprice" id="priceK_b_37194_1">
                        <span><sup>￥</sup></span>198
                    </div>
                </li>
                <li class="price_list0" goods="219085" eid="b_219085_1"
                    id="cx_b_219085_1"><a
                        href="http://www.e3mall.cn/html/products/220/1500219085.html#trackref=sfbest_hp_hp_goods_small-item2"
                        title="爱情-99枝玫瑰赠德芙心语巧克力" target="_blank"><img
                        class="lazy"
                        src="/images/html/portal06.jpg"
                        style="display: inline;"></a>
                    <div class="gBtn p-btn bbtn" style="top: 210px;">
                        <a pid="219085"
                           data_url="http://p02.e3mall.cn/2016/1500219085/middle_1500219085_1_1/160x160.jpg"
                           href="javascript:void(0)" indexflag="1">加入购物车</a>
                    </div>
                    <div class="bprice" id="priceK_b_219085_1">
                        <span><sup>￥</sup></span>629
                    </div>
                </li>
                <li class="price_list0" goods="55213" eid="b_55213_1"
                    id="cx_b_55213_1"><a
                        href="http://www.e3mall.cn/html/products/56/1400055213.html#trackref=sfbest_hp_hp_goods_small-item3"
                        title="爱情-甜蜜纪事" target="_blank">
                    <img class="lazy" data="/images/goods/c11e0d59289782b09ea1cbcb98070017.jpg"
                               alt="爱情-甜蜜纪事" src="/images/html/portal07.jpg" style="display: inline;"></a>
                    <div class="gBtn p-btn bbtn">
                        <a pid="55213"
                           data_url="http://p02.e3mall.cn/2014/1400055213/middle_1400055213_1_1/160x160.jpg"
                           href="javascript:void(0)" indexflag="1">加入购物车</a>
                    </div>
                    <div class="bprice" id="priceK_b_55213_1">
                        <span><sup>￥</sup></span>419
                    </div>
                </li>
                <li class="price_list0" goods="167461" eid="b_167461_1"
                    id="cx_b_167461_1"><a
                        href="http://www.e3mall.cn/html/products/168/1300167461.html#trackref=sfbest_hp_hp_goods_small-item4"
                        title="爱情-我只钟情你" target="_blank"><img class="lazy"
                                                                  data="/images/goods/7cc96c14e10f6ed8db28b4b1efdfdb07.jpg"
                                                                  alt="爱情-我只钟情你"
                                                                  src="/images/html/portal08.jpg"
                                                                  style="display: inline;"></a>
                    <div class="gBtn p-btn bbtn">
                        <a pid="167461"
                           data_url="http://p02.e3mall.cn/2015/1300167461/middle_1300167461_1_1/160x160.jpg"
                           href="javascript:void(0)" indexflag="1">加入购物车</a>
                    </div>
                    <div class="bprice" id="priceK_b_167461_1">
                        <span><sup>￥</sup></span>236
                    </div>
                </li>
            </ul>
        </div>
        <!-- 口碑甄选 end -->
        <div class="rSide1">

            <div class="rImg2">
                <a name="sfbest_hp_hp_news_right-ad" class="trackref" href="/html/activity/1472464260.html"
                   target="_blank"><img salt="9.2-9.5" src="/images/goods/right_pic.jpg"></a>
            </div>

            <div class="sfNews">
                <div class="rTitle"><h2>最新动态</h2><a href="/www/173/" target="_blank" class="more">更多&gt;</a></div>
                <ul>
                    <li><a name="sfbest_hp_hp_news_1" href="/www/173/8531.html" target="_blank" class=" red trackref"
                           title="各快递及物流配送问题公告">各快递及物流配送问题公告</a></li>
                    <li><a name="sfbest_hp_hp_news_2" href="/www/173/8449.html" target="_blank" class=" trackref"
                           title="购买爱情鲜花系列满6666元抽奖活动中奖公告">购买爱情鲜花系列满6666元抽奖活动中奖公告</a></li>
                    <li><a name="sfbest_hp_hp_news_3" href="/www/173/8447.html" target="_blank" class=" trackref"
                           title="满8888抽iPhone XS活动中奖公告">满8888抽iPhone XS活动中奖公告</a></li>
                    <li><a name="sfbest_hp_hp_news_4" href="/www/173/8445.html" target="_blank" class=" trackref"
                           title="《浪漫七夕》活动中奖名单公布">《浪漫七夕》活动中奖名单公布</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="clr"></div>
</div>

<!-- footer start -->
<jsp:include page="commons/footer.jsp"/>
<!-- footer end -->
</body>
</html>