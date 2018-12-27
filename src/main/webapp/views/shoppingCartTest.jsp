<%--
  Created by IntelliJ IDEA.
  User: 15327
  Date: 2018/12/23
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>购物车页面</title>

    <link href="<%=basePath%>views/assets/css/amazeuishoppingCart1.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>views/assets/css/shoppingCartdemo.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>views/assets/css/cartstyle.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>views/assets/css/cartOptstyle.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="<%=basePath%>views/assets/js/jquery.js"></script>

</head>

<body>

<!--顶部导航条 -->
<div class="am-container header">
    <ul class="message-l">
        <div class="topMessage">
            <div class="menu-hd">
                <a href="#" target="_top" class="h">亲，请登录</a>
                <a href="#" target="_top">免费注册</a>
            </div>
        </div>
    </ul>
    <ul class="message-r">
        <div class="topMessage home">
            <div class="menu-hd"><a href="#" target="_top" class="h">商城首页</a></div>
        </div>
        <div class="topMessage my-shangcheng">
            <div class="menu-hd MyShangcheng"><a id="myorders" href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>我的订单</a></div>
        </div>
        <div class="topMessage mini-cart">
            <div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
        </div>
        <div class="topMessage favorite">
            <div class="menu-hd"><a href="#" target="_top"><i class=""></i><span></span></a></div>
    </ul>
</div>

<!--悬浮搜索框-->

<!--购物车 -->
<div class="concent">
    <div id="cartTable">
        <div class="cart-table-th">
            <div class="wp">
                <div class="th th-chk">
                    <div id="J_SelectAll1" class="select-all J_SelectAll">

                    </div>
                </div>
                <div class="th th-item">
                    <div class="td-inner">商品信息</div>
                </div>
                <div class="th th-price">
                    <div class="td-inner">单价</div>
                </div>
                <div class="th th-amount">
                    <div class="td-inner">数量</div>
                </div>
                <div class="th th-sum">
                    <div class="td-inner">&nbsp;&nbsp;</div>
                </div>
                <div class="th th-op">
                    <div class="td-inner">操作</div>
                </div>
            </div>
        </div>
        <div class="clear"></div>



<c:if test="${products!=null}">
    <c:forEach items="${products}" var="productPiece" >
        <tr class="item-list">
            <div class="bundle  bundle-last ">

                <div class="clear"></div>
                <div class="bundle-main">

                    <ul class="item-content clearfix">
                        <li class="td td-chk">
                            <div class="cart-checkbox ">

                            </div>
                        </li>

                        <li class="td td-item">
                            <div class="item-pic">
                                <a href="#" target="_blank" data-title= "${productPiece.product.name}"class="J_MakePoint" data-point="tbcart.8.12">
                                    <img src="<%=basePath%>${productPiece.productimage.path}" class="itempic J_ItemImg"></a>
                            </div>
                            <div class="item-info">
                                <div class="item-basic-info">
                                    <a href="#" target="_blank" title="${productPiece.product.name}" class="item-title J_MakePoint" data-point="tbcart.8.11">${productPiece.product.name}</a>
                                </div>
                            </div>
                        </li>

                        <li class="td td-info">
                            <div class="item-props item-props-can">
                            </div>
                        </li>


                        <li class="td td-price">
                            <div class="item-price price-promo-promo">
                                <div class="price-content">
                                    <div class="price-line">
                                        <em class="price-original">${productPiece.product.originalprice}</em>
                                    </div>
                                    <div class="price-line">
                                        <em class="J_Price price-now" tabindex="0">${productPiece.product.promoteprice}</em>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="td td-amount">
                            <div class="amount-wrapper ">
                                <div class="item-amount ">
                                    <div class="sl">
                                        <input class="min am-btn" name="" type="button" value="-" />
                                        <input class="text_box" name="" type="text" value="3" style="width:30px;" />
                                        <input class="add am-btn" name="" type="button" value="+" />
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="td td-sum">
                            <div class="td-inner">
                                <%--<em tabindex="0" class="J_ItemSum number">${productPiece.product.promoteprice*productPiece.productnum}</em>--%>
                            </div>
                        </li>
                        <li class="td td-op">
                            <div class="td-inner">

                                    <button type="button" class="am-btn am-btn-default">删除</button>
                                    <%--<a href="pay.html" id="J_Go" class="-btn submit-btn-disabled" aria-label="请注意如果没有选择宝贝，将无法结算">--%>
                                        <%--<span>删&nbsp;除</span></a>--%>
                                <br/>
                                <br/>
                                    <button type="button" class="am-btn am-btn-warning">结算</button>
                                    <%--<a href="pay.html" id="J_Go" class="submit-btn submit-btn-disabled" aria-label="请注意如果没有选择宝贝，将无法结算">--%>
                                        <%--<span>结&nbsp;算</span></a>--%>

                            </div>
                        </li>
                        <li>

                        </li>
                    </ul>

                </div>
            </div>
        </tr>
        <div class="clear"></div>
    </c:forEach>
</c:if>


    <div class="footer">

            <p>
                <a href="#">石立军</a>
                <a href="#">肖枢贤</a>
                <a href="#">陈俊卿</a>
                <a href="#">简斌兵</a>
                <a href="#">黄宁</a>
                <em>© 计算机科学与技术161班 版权所有</em>
            </p>

    </div>

</div>
    <%--//跳转我的订单--%>
    <script>
        $("#myorders").click(function () {
            // var productNum = $("#text_box")[0].value;
            // console.log(productNum);
            window.location.href="<%=basePath%>userPage/ordAndCart/showUserOrders";
        });
    </script>
<!--操作页面-->

<!--引导 -->

</body>

</html>