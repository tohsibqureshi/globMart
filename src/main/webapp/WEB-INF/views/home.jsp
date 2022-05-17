 <div class="container">

        <div class="row">

           <div class="col-md-3">
               <%@include file="./shared/sidebar.jsp" %>
            </div>

            <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                             
                                <div class="item active">
                                    <img class="slide-image" src="img/1234.jpg" width="60px" height="30px" alt="">
                             </div>
                              
                           <c:forEach items="${cate}" var="cat"> 
                               <div class="item">
                               
                                    <img class="slide-image" src="upload/${cat.imageName}" width="60px" height="30px" alt="">
                                </div>
                               
 							</c:forEach>                        
                          </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>
                <div class="row">
                        <c:forEach items="${cate}" var="cat">
 
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        
                        <div class="thumbnail">
                            <img src="upload/${cat.imageName}" width="320" height="150"  alt="">
                            <div class="caption">
                                
                                <h4><a href="/showdetails${cat.name}">${cat.name}</a>
                                </h4><h4 class="pull-right">$${cat.price}</h4>
                                <p>${cat.discription} <a target="_blank" href="#">Bootsnipp - http://bootsnipp.com</a>.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                                
                                
                                
                                
                                
                            </div>
                        </div>
                    </div>
                        </c:forEach>

<script type="text/javascript">function add_chatinline(){var hccid=35583965;var nt=document.createElement("script");nt.async=true;nt.src="https://mylivechat.com/chatinline.aspx?hccid="+hccid;var ct=document.getElementsByTagName("script")[0];ct.parentNode.insertBefore(nt,ct);}
add_chatinline(); </script>

                </div>
            </div>

        </div>

    </div>