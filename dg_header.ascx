<%@ Register TagPrefix="dnn" TagName="LUCENE" Src="~/DesktopModules/Aricie.LuceneSearch/SearchSkinObject.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SIGNIN" Src="~/DesktopModules/Admin/Authentication/Login.ascx" %>

<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-58a244563bc4a54c"></script>

<script>

$(document).ready(function(){

    //Legolas Login
    $('.dnnLoginService .dnnFormItem').fadeTo(0, 0.01);

    function legolas(){
        $('.dg_legolas').animate({left: '200%'}, 350);
        $('.dg_legolas').fadeOut("fast", function(){
            $($('.dnnLoginService .dnnFormItem').get()).each(function(i){
                $(this).delay(100 * i).animate({opacity:'1', left:'15px'});
            });
            $('#dnn_ctr916_Login_Login_DNN_txtUsername').focus();
        });
        $('.dg_login').slideToggle();
    }
    $('.dg_memheadlogin').click(legolas);

    //Sticky header
    $(window).width(function(){
           if ($(window).width() >= 992) {  
                    $(window).scroll(function() {
                        if ($(this).scrollTop() >= 39) {
                         // $('.dg_header').css('margin-top','-50px');
                            $('.dg_login').slideUp(200); //Hide legolas if shot out.
                            $('#dgmobilelogin').slideUp();
                            $('.dg_header').addClass('stickytop');
                            $('.header-top').hide(); //temp for login. will remove.
                            $('.dg_logowrap').addClass('dg_logosticky');
                            $('#dnn_LOGO2_imgLogo').css('height','75px');
                            $('.main').addClass('dg_mainpush');
                                if ($(window).width() >= 992) { //Desktop when stickied.
                                    $('.dg_social').css('margin-top','5px');
                                    $('#dnn_LOGO2_imgLogo').css('padding','5px 0px');
                                    $('#dnn_LOGO2_imgLogo').css('margin-bottom','13px');
                                    $('#header').css('height','143px');
                                } 
                                else { //Mobile when stickied.
                                    $('.dg_social').css('margin-top','0px');
                                    $('#dnn_LOGO2_imgLogo').css('padding','5px 0px');
                                }
                        }
                        else {
                            $('.dg_header').removeClass('stickytop');
                            $('.header-top').show();
                            $('.dg_logowrap').removeClass('dg_logosticky');
                            $('#dnn_LOGO2_imgLogo').css('height','auto');
                            $('.main').removeClass('dg_mainpush');
                                if ($(window).width() >= 992) { //Desktop when top.
                                    $('.dg_social').css('margin-top','43px');
                                    $('#dnn_LOGO2_imgLogo').css('padding','15px 0px');
                                    $('#dnn_LOGO2_imgLogo').css('margin-bottom','0px');
                                    $('#header').css('height','179px');
                                } 
                                else { //Mobile when top.
                                    $('.dg_social').css('margin-top','5px');
                                    $('#dnn_LOGO2_imgLogo').css('padding','5px 0px');
                                }
                        }
                    });
           } else {
                /* 29/03/17: Decision to keep mobile header non-sticky for navigation expansion */
           }

    });

    // //Special padding for special logo
    // if ($(window).width() >= 992) {
    //     $('#dnn_LOGO2_imgLogo').css('padding','20px 0px 20px 0px');
    // }
            

$('.vertical-bar').css('display','none'); /* GET RID OF THIS PROPERLY EVENTUALLY */

$('.dg_memheadmembership').hover(function(){ 
    $('.dg_memheaddrop').slideToggle(500);
});

if($('#ControlBar').is(':visible')){
    $('.dg_memheaddrop').css('top','30px'); /* Counter DNN Admin Bar */
    $('#ControlBar').css('background-color','#000');
};

$('.dg_arrowhidebtn').click(function(){
    $('.dg_arrowhide').slideToggle();
});

$('.dg_memhead_btn, .dg_link, .dgSearchButton').hover(function(){
    // $('.dg_memhead_btn').not(this).css('filter','brightness(70%)');
    $(this).css('background','#2f2f2f');
}, function(){
    // $('.dg_memhead_btn').not(this).css('filter','brightness(100%)');
    $(this).css('background','');
});

$('.LS_SOInput input').hover(function(){
    $('#dnn_dnnSearch_txtSearch').css('padding-right','100px');
    $('#dnn_dnnSearch_txtSearch').css('background-color','#1a56a7');
    $('#dnn_dnnSearch_txtSearch').css('color','#fff');
}, function() {
    $('#dnn_dnnSearch_txtSearch').css('padding-right','0px');
    $('#dnn_dnnSearch_txtSearch').css('background-color','#fff');
    $('#dnn_dnnSearch_txtSearch').css('color','#999');
});

/* Search Placeholder */
    $('#dg_headsearch').find("input[type=text]").each(function(ev) {
        if(!$(this).val()) { 
           $(this).attr("placeholder", "Search");
        }
    });


	var hovclr = "#DD5900";
	var offclr = "#ccc";

	$('.dg_arrowtop1').css('filter', 'grayscale(100%)');

	//tacc
	$('.dg_arrowtop1').hover(function(){
		$('.dg_arrowtop1').css('filter', 'grayscale(0%)');
		$('.dg_arrowtop1').css('padding-top', '5px');
		$('.dg_arrowtop1').css('border-bottom', '5px #dd5900 solid');

	}, function(){
		$('.dg_arrowtop1').css('filter', 'grayscale(100%)');
		$('.dg_arrowtop1').css('padding-top', '0px');
		$('.dg_arrowtop1').css('border-bottom', '0px');
	});

	//join
	$('.dg_arrowtop2').hover(function(){
		$('.dg_arrowtop2').css('padding-top', '5px');
		$('.dg_arrowtop2').css('color', hovclr);
		$('.dg_arrowtop2').css('border-bottom', '5px #dd5900 solid');
		$('.dg_arrowtop2').css('border-bottom-width', '5px');
	}, function(){
		$('.dg_arrowtop2').css('padding-top', '0px');
		$('.dg_arrowtop2').css('color', offclr);
		$('.dg_arrowtop2').css('border-bottom', '0px');
	});

	//login
	$('.dg_arrowtop3').hover(function(){
		$('.dg_arrowtop3').css('padding-top', '5px');
		$('.dg_arrowtop3').css('color', hovclr);
		$('.dg_arrowtop3').css('border-bottom', '5px #dd5900 solid');
	}, function(){
		$('.dg_arrowtop3').css('padding-top', '0px');
		$('.dg_arrowtop3').css('color', offclr);
		$('.dg_arrowtop3').css('border-bottom', '0px');
	});

	//search
	$('.dg_arrowtop4').hover(function(){
		$('.dg_arrowtop4').css('padding-top', '5px');
		$('.dg_arrowtop4').css('color', hovclr);
		$('.dg_arrowtop4').css('border-bottom', '5px #dd5900 solid');
	}, function(){
		$('.dg_arrowtop4').css('padding-top', '0px');
		$('.dg_arrowtop4').css('color', offclr);
		$('.dg_arrowtop4').css('border-bottom', '0px');
	});

    //Mobile login shoot
    $('.dg_utility_login').click(function(){
        $('#dgmobilelogin').slideToggle();
        $('#dgmobilelucy').slideUp();
    });
    //Mobile lucy shoot
    $('.dg_utility_search').click(function(){
        $('#dgmobilelucy').slideToggle();
        $('#dgmobilelogin').slideUp();
    });
    //Mobile members shoot
    $('.dg_utility_members').click(function(){
        $('#dgmobilemembers').slideToggle();
    });

//addClass
$('.dg_mobsliderwrap img').addClass('img-responsive');
$('.dg_addclass img').addClass('img-responsive');

});

</script>

<style>
/*============ HEADER QUERIES ============*/
/*========================================*/
@media (max-width:767px) {
    .dg_utility_mobile_pub, .dg_utility_mobile_mem {
        display: block;
    }
    .dg_memhead {
        display: none;
    }
}
@media (min-width:768px) {
    .dg_utility_mobile_pub, .dg_utility_mobile_mem {
        display: none !important;
    }
    .dg_memhead {
        display: block;
    }
}

    /* FAS */
    .pac-container:after{ 
        content:none !important; 
    }

    /* Lucy */
        span{
           font-family: 'Open Sans', sans-serif !important; 
        }
        #dnn_dnnSearch_txtSearch {
            z-index: 1 !important;
            transition: all 0.5s;
        }
        .dgSearchButton {
            background: #1a56a7;
/*            padding: 11px;
            padding-bottom: 14px;*/
            margin-left: -4px;
            border-radius: 0px 10px 10px 0px;
            display: none;
            transition: all 0.35s;
            cursor: pointer;
        }
            .dgSearchButton a{
                color: #fff !important;
            }
            .dgSearchButton span {
                padding-right: 10px;
            }
        #dg_headsearch {
            min-height:50px;
            color: #000 !important;
            /*transform: skew(-28deg);*/
            background:#fff;
            padding: 0px 15px 0px 15px;
        }
        #dg_headsearch input{
            /*transform: skew(28deg);*/
            border: 0;
            height: 48px;
            border: 1px #1a56a7 solid;
            border-radius: 0px 0px 10px 10px;
            height: 35px;
            padding: 2px 0px 0px 10px;
        }
        #dg_headsearch input:focus{
            outline: none;
        }
    /* End Lucy Styles */

    span.glyphicon {
        font-family: 'Glyphicons Halflings' !important;
    }
    .dg_clear {
        float: none;
    }
    header {
        border-top: none;
    }
        header img{
            padding: 0px;
        }
    .dg_welcome {
        background: #000;
    }
    .dg_scrollolologo {
        height: 50px !important;
    }
    .dg_addclass a, a:hover, a:focus {
        color: #f4792f;
    }
/*============ Mobile Header =============*/
/*========================================*/

.dg_utility_login, .dg_utility_join, .dg_utility_search, .dg_utility_members {
    padding: 10px 0px;
    text-align: center;
    color: #fff;
    background:#ee7623;
    cursor:pointer;
}
.dg_utility_login { /*-- But Mom, I'm old enough to have my own background! --*/
    background:#1a56a7;
}
.dg_utility_search {
    background: #000;
}
.dg_utility_members {
    background: #1a56a7;
}

@media (max-width:991px) {
    .dg_toggle {
        right: 0px;
        top: 10px;
        font-size: 23pt;
        background: #fff;
        color: #1a56a7;;
    }
}
/*@media (min-width:768px) {
    #dnn_LOGO2_imgLogo {
        height: 95px;
    }
}*/

#dnn_DGLOGIN_pnlLogin .dnnFormItem { /*-- Reset desktop opacity/fadeIn of fields --*/
    opacity: 1 !important;
}

#dgmobilelogin {
    display:none;
    max-width:80% !important;
    padding-left:20px;
    padding:10px;
}

#dgmobilelucy {
    display:none;
    padding:10px;
    text-align: center;
}
#dgmobilemembers {
    display:none;
    padding:10px;
    text-align: center;
    background: #333;
    color: #fff;
    text-decoration: none;
}F


/*============ Desktop Header ============*/
/*========================================*/
/*    .dg_max {
        width:1450px;
        max-width:1450px !important;
        }
        @media (max-width:1490px) {
            .dg_max {
                width:auto;
            }
        }*/
        .dg_maxnav {

        }
        @media (min-width:1200px) and (max-width:1489px) {
            header.flat-menu nav ul.nav-main li a {
                padding: 10px 29px !important;
            }
        }
        @media (min-width:1490px) {
            .dg_max {
                width:1450px;
                max-width:1450px !important;
            }
        }

    .dg_memhead {
        background: #fff;
        color:#fff;
        height: 50px;
        margin-top: 0px;
        position: relative;
        z-index: 1;
    }
        @media (min-width:992px) {
            .dg_memhead {
                position: absolute;
                left: 0px;
                right: 0px;
            }
        }
    .dg_memhead .row {
        /*padding: 0px 15px;*/
    }
    .dg_memheadmembers {
        /*overflow: hidden;*/
    }
    .dg_memhead_btn {
        min-width: 100px;
        text-align: center;
        min-height: 35px;
        padding: 4px 10px 0px 10px;
        transition: all 0.5s;
    }
        .dg_memhead_btn a {
            text-decoration: none;
        }
        .dg_memheadlogin {
            cursor: pointer;
            background:#1a56a7;
            border-radius: 0px 0px 15px 15px;
        }
        .dg_memheadjoin {
            cursor: pointer;
            background: #1a56a7;
            border-radius: 0px 0px 15px 15px;
            margin: 0 15px 0 0px;
            /*transform: skew(-28deg);*/
        }
            .dg_memheadjoin > * { 
                /*margin-left:-12px;*/
                /*transform: skew(28deg); */
                /*position: absolute;*/
            }
        .dg_memheadmembership {
            cursor: pointer;
            background: #1a56a7;
            margin: 0 0px 0 15px;
            border-radius: 0px 0px 15px 15px;
            /*transform: skew(-28deg);*/
            width: 158px
;        }
            .dg_memheadmembership > * { 
                /*margin-left:-40px;*/
                /*transform: skew(28deg); */
                /*position: absolute;*/
                line-height: 15px;
            }
            .dg_memheadlogout {
                color:#fff;
                font-size: 10pt;
                display:inline;
                margin: 14px 0px 0px 0px;
                padding: 0px !important;
            }
        .dg_memheaddrop {
            display:none;
            background: #000000;
            width: 178px;
            top: 28px;
            position: absolute;
            z-index: 3;
            margin-left: -10px;
            border-radius: 0px 0px 15px 15px;

        }
            .dg_memheaddrop .dg_link{
                display:block;
                color: #fff;
                padding: 7px 10px;
                font-size: 9pt;
                text-align: left;

                border-radius: 0px 0px 15px 15px;
            }
            .dg_memheaddrop .glyphicon {
                padding-right: 5px;
                font-size: 11pt;
            }
        .dg_memheaduser {
            cursor: pointer;
            background:#000;
            margin-left: -13px;
            transform: skew(-28deg);
            width: 200px;
        }
            .dg_memheaduser > * { 
                margin-left:-70px;
                transform: skew(28deg); 
                position: absolute;
                color: #fff;
            }
        .dg_memheadsearch {
            background:#fff;
            margin-left: -13px;
            transform: skew(-28deg);
            width: 200px;
        }
            .dg_memheadsearch > * { 
                margin-left:-70px;
                transform: skew(28deg); 
                position: absolute;
                color: #666;
            }
        .dg_memheadistore {
            cursor: pointer;
            background:#1a56a7;
            border-radius: 0px 0px 15px 15px;
            margin: 0 0px 0 0px;
            /*transform: skew(-28deg);*/
            width: 110px;
            padding-top: 5px;
            min-height: 35px;
        }
            .dg_memheadistore > * { 
                /*margin-left:-13px;*/
                /*transform: skew(28deg); */
                /*position: absolute;*/
                color: #fff;
                line-height: 11px;
            }
        .dg_memheadtech {
            cursor: pointer;
            background:#1a56a7;
            margin: 0 15px 0 0;
            border-radius: 0px 0px 15px 15px;
            /*transform: skew(-28deg);*/
            width: 110px;
            padding-top: 5px;
            min-height: 35px;
        }
            .dg_memheadtech > * { 
                /*margin-left:-43px;*/
                /*transform: skew(28deg);*/ 
                /*position: absolute;*/
                color: #fff;
                line-height: 11px;
            }

    .dg_memhead a{
        color: #fff;
    }
    .dg_memheadmembers {
        display:none;
    }
    #dnn_LOGO2_imgLogo {
        /*padding: 20px 0px 20px 0px;*/
    }
        .dg_social img {
            display:inline-block;
            height:54px;
        }
        @media (min-width:992px) {
            .dg_social  {
                margin-top:48px;
            }
            #header {
                /*margin-top: -55px;*/
                /*height:179px;*/
            }
            #dnn_LOGO2_imgLogo {
                /*height:94px;*/
                padding: 20px 0px 20px 0px;
            }
        }
        @media (max-width:991px) {
            .dg_social {
                float:left !important;
            }
        }
        @media (max-width: 620px) {
            .dg_social img {
                height: 35px;
                margin-top: 14px;
            }
        }

    .dg_navgrad {
        padding: 0px;
        margin: 10px 0px 0px 0px;
        min-height:2px;
        width: 100%;
        background: -moz-linear-gradient(left,  rgba(244,123,32,1) 0%, rgba(244,123,32,0.69) 31%, rgba(244,123,32,0) 100%); 
        background: -webkit-linear-gradient(left,  rgba(244,123,32,1) 0%,rgba(244,123,32,0.69) 31%,rgba(244,123,32,0) 100%);
        background: linear-gradient(to right,  rgba(244,123,32,1) 0%,rgba(244,123,32,0.69) 31%,rgba(244,123,32,0) 100%); 
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f47b20', endColorstr='#00f47b20',GradientType=1 ); 
    }
    input:-webkit-autofill, textarea:-webkit-autofill, select:-webkit-autofill {
        background-color:#990000 !important;
    }

/*=== Header Login Module ===*/
/*===========================*/
#mainMenu {
    margin: 0px !important;
}
.dg_login {
    display:none;
    margin-top: 0px;
    /* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#545454+0,c4c4c4+5,f4f4f4+9,f4f4f4+76,e0e0e0+92,bfbfbf+100 */
    background: rgb(84,84,84); /* Old browsers */
    background: -moz-linear-gradient(top,  rgba(84,84,84,1) 0%, rgba(196,196,196,1) 5%, rgba(244,244,244,1) 9%, rgba(244,244,244,1) 76%, rgba(224,224,224,1) 92%, rgba(191,191,191,1) 100%); /* FF3.6-15 */
    background: -webkit-linear-gradient(top,  rgba(84,84,84,1) 0%,rgba(196,196,196,1) 5%,rgba(244,244,244,1) 9%,rgba(244,244,244,1) 76%,rgba(224,224,224,1) 92%,rgba(191,191,191,1) 100%); /* Chrome10-25,Safari5.1-6 */
    background: linear-gradient(to bottom,  rgba(84,84,84,1) 0%,rgba(196,196,196,1) 5%,rgba(244,244,244,1) 9%,rgba(244,244,244,1) 76%,rgba(224,224,224,1) 92%,rgba(191,191,191,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#545454', endColorstr='#bfbfbf',GradientType=0 ); /* IE6-9 */
    height: 310px;
}

.dg_legolas {
    height:250px;
    margin-left:-100%;
}

.dg_legolas img {
    height:100%;
    width:100%;
}

.dg_arrowcenter {
    width:450px;
    margin: 55px auto 0 auto;
}

#dnn_contentPane_login {
    padding: 20px 0px;
}
    #dnn_contentPane_login label {
        color: #666 !important;
    }


/*=== Navbar item dividers and padding ===*/
/*========================================*/

.dg_navgrad { /*=== The Alex bar==*/
    display: none;
}

@media (min-width:992px) { /*==== Border only on desktop/tablet ====*/
    header.flat-menu nav ul.nav-main li a {
        border-right: 2px #cccccc solid;
    }
        .dropdown-primary:last-child a{ /*==== Remove Border from last nav item ====*/
            border-right: 0px #00cc00 solid !important;
        }
        .dropdown-menu li a { /*==== Remove Border from child-nav ====*/
            border-right: 0px #eeeeee solid !important;
        }
}
header.flat-menu nav ul.nav-main li a {  /*==== Public nav desktop ====*/
    padding: 10px 49px;
    font-size: 11pt !important;
}
    header.flat-menu nav ul.nav-main li.dropdown:hover>a { /*==== Public nav desktop hover fix ====*/
        padding-bottom: 11px;
    }

@media (min-width:992px) and (max-width:1199px) { /*==== Public nav tablet ====*/
    header.flat-menu nav ul.nav-main li a {
        padding: 10px 14px !important;
    }
}
/*@media (min-width:1200px){
    #dnn_LOGO2_imgLogo {
        height: 50px !important;
    }
}*/

/*============= SLIDER TEXT ==============*/
/*========================================*/
    #LiveSlider482 h1 {
        color:#fff;
        font-weight: 600;
        text-shadow: 4px 7px 10px #000;
        /*font-size:2.8vh !important;*/
    }
    .dg_sliderwrap {
        z-index: -1;
    }

    .dg_mobsliderwrap img{

    }


/*============= FLOAT ITEMS ==============*/
/*========================================*/

.scroll-to-top {
    margin-bottom: 60px;
    margin-right: 4px;
}

.at-expanding-share-button-toggle-bg span {
    background-color: #ee7623 !important;
}

@media (max-width:992px) {

    *[id^='antila-widget-']{
        left: 65px! important;

        /*display:none !important;*/
    }
    .scroll-to-top.hidden-mobile {
        display: block !important;
        bottom: 50px !important;
    }
    .scroll-to-top {
        border-radius: 50% !important;
        padding: 12px !important;
        width: 40px !important;
        height: 40px!important;
        min-width: 0px !important;
        margin-bottom: 10px;
        margin-left: 10px !important;
        right: inherit !important;
        box-shadow: 0 2px 4px 0 rgba(0,0,0,.3);
        opacity: 1 !important;
    }
}

</style>

<!--=== Mobile Header | Members ===-->

<% if (Request.IsAuthenticated) { %>
<style>
    .dg_utility_mobile_mem {
        display: block;
    }
    .dg_utility_mobile_pub {
        display:none;
    }
</style>

<div class="dg_utility_mobile_mem">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-10 dg_nopad dg_utility_members">
                Hi <b><%=UserController.GetCurrentUserInfo().DisplayName%></b>
            </div>
            <div class="col-xs-2 dg_utility_search">
                <span class="glyphicon glyphicon-search"></span>
            </div>
        </div>
    </div>
</div>
<% } %>
    
    <!--=== My Membership ===-->
    <a href="/Admin/LogViewer/ctl/Logoff">
        <div id="dgmobilemembers">
            Logout
        </div>
    </a>

<!--=== Mobile Header | Public ===-->
<div class="dg_utility_mobile_pub">
    <div class="container-fluid">
        <div class="row">
            <a href="/Membership/Join-now">
            <div class="col-xs-5 dg_utility_join">
                Join
            </div>
            </a>
            <div class="col-xs-5 dg_utility_login">
                Login
            </div>
            <div class="col-xs-2 dg_utility_search">
                <span class="glyphicon glyphicon-search"></span>
            </div>
        </div>
    </div>
</div>

    <!--=== Login Form ===-->
    <div id="dgmobilelogin">
       <dnn:SIGNIN ID="DGLOGIN" runat="server" CssClass=""/>
    </div>
    <!--====== Lucy =====-->
    <div id="dgmobilelucy">
        <dnn:LUCENE ID="dnnSearchMob" runat="server" ShowSite="false" ShowWeb="false" EnableTheming="true" Submit="Search" CssClass="dgSearchButtonMob"/>
    </div>

<!--=== Desktop Header ===-->
<div class="dg_memhead">
    <div class="container dg_max dg_nopad">
            
                <!-- Public -->
                <div class="dg_memheadpublic">
                    <div class="dg_memhead_btn dg_memheadlogin pull-right">
                        <span>
                            <a name="login">LOGIN</a>
                        </span>
                    </div>
                    <div class="dg_memhead_btn dg_memheadjoin pull-right">
                        <span>
                            <a href="/Membership/Join-Now">JOIN</a>
                        </span>
                    </div>
                </div>

                <!-- Members -->
                <div class="dg_memheadmembers">
                    <a href="#">
                        <div class="dg_memhead_btn dg_memheadmembership pull-right">
                            <span>
                                Hi <b><%=UserController.GetCurrentUserInfo().DisplayName%></b>
                                <i class="fa fa-caret-down"></i>
                            </span>
                            <div class="dg_memheaddrop">
                                <div class="dg_link">
                                    <span class="glyphicon glyphicon-user"></span>My Membership
                                </div>
                                <div class="dg_link">
                                    <span class="glyphicon glyphicon-check"></span>Renew Membership
                                </div>
                                <a href="/Admin/LogViewer/ctl/Logoff">
                                    <div class="dg_link">
                                        <span class="glyphicon glyphicon-log-out"></span>Logout
                                    </div>
                                </a>
                            </div>
                        </div>
                    </a>
                    <a href="https://www.autoistore.com.au" target="_blank">
                        <div class="dg_memhead_btn dg_memheadistore pull-right">
                            <span>
                                iStore
                            </span>
                        </div>
                    </a>
                    <a href="/techonlinev2/" target="_blank">
                        <div class="dg_memhead_btn dg_memheadtech pull-right">
                            <span>
                                Tech-Online
                            </span>
                        </div>
                    </a>
                </div>
                <div id="dg_headsearch" class="pull-right">
                    <dnn:LUCENE ID="dnnSearch" runat="server" ShowSite="false" ShowWeb="false" EnableTheming="true" Submit="Search" CssClass="dgSearchButton"/>
                </div>

    </div>
</div>




<% if (Request.IsAuthenticated) { %>

    <style>
        /*=== Navbar item dividers ===*/
        /*============================*/
        header.flat-menu nav ul.nav-main li a { /*==== Members nav desktop+ ====*/
            padding: 10px 26px !important;
            font-size: 11pt !important;
        }
        @media (min-width:1199px) and (max-width:1489px) { /*==== Members nav desktop ====*/
            header.flat-menu nav ul.nav-main li a {
                font-size: 11pt !important;
                padding: 10px 12px !important;
            }
        }
        @media (min-width:992px) and (max-width:1198px) { /*==== Members nav tablet ====*/
            header.flat-menu nav ul.nav-main li a {
                font-size: 9pt !important;
                padding: 10px 10px !important;
            }
        }
        @media (min-width:992px) {  /*==== Members nav colour ====*/
            html header nav ul.nav-main li.dropdown-primary > a {
                color: #1a56a7;
            }
        }

        .dg_memheadpublic {
            display: none;
        }
        .dg_memheadmembers {
            display: block;
        }

        /*Navbar Overwrite*/
        html header nav ul.nav-main li.dropdown-primary.open > a, html header nav ul.nav-main li.dropdown-primary.active > a, html header nav ul.nav-main li.dropdown-primary:hover > a {
                background: #1a56a7 !important;
        }

        html header nav ul.nav-main .dropdown-primary > ul.dropdown-menu, html header nav ul.nav-main .dropdown-primary.mega-menu-item > ul.dropdown-menu, html header nav ul.nav-main .dropdown-primary > ul.dropdown-menu ul.dropdown-menu, html header nav ul.nav-main .dropdown-primary.mega-menu-item > ul.dropdown-menu ul.dropdown-menu {
        border-top-color: #1a56a7 !important;
            background: #1a56a7 !important;
        }

        html header nav ul.nav-main .dropdown-primary > ul.dropdown-menu li a:focus, html header nav ul.nav-main .dropdown-primary.mega-menu-item > ul.dropdown-menu li a:focus {
            background: #000 !important;
            color: ;
        }

        /*=== Footer items ===*/
        /*====================*/
        div#dnn_FooterTop { 
            background: none !important;
        }

    </style>


<% } %>

<!-- Login Module -->
            <div class="row dg_login">
                <div class="col-md-12 dg_legolas"><img src="/portals/0/arrow_full.png" /></div>
                    <div class="dg_arrowcenter">
                        <div id="contentPane_login" runat="server">
                    </div>
                </div>
            </div>

<div class="body">
        <div class="container-fluid dg_member">
            <div class="row">
                <div class="col-xs-12">

                </div>
            </div>
        </div>

        <header id="header" class="flat-menu clean-top dg_header">
            <div class="container dg_logowrap dg_max">

            	<div class="row dg_headrow">
            		<div class="col-xs-6 dg_nopad">
		                <div class="logo dg_logo">
		                    <dnn:LOGO runat="server" ID="LOGO2" class="img-responsive"/>
		                </div>
		            </div>

		            <div class="col-xs-6 dg_arrowhide">
		                    <div class="row">
                                <div class="dg_social pull-right">
                                        <a href="https://www.facebook.com/vacc.com.au" target="_blank"><img src="/portals/0/social/header_fb.jpg" class="img-responsive"></a>
                                        <a href="https://twitter.com/vaccofficial" target="_blank"><img src="/portals/0/social/header_tw.jpg" class="img-responsive"></a>
                                        <a href="https://www.youtube.com/user/VACCWEB" target="_blank"><img src="/portals/0/social/header_yt.jpg" class="img-responsive"></a>
                                        <a href="https://www.linkedin.com/company-beta/574001/" target="_blank"><img src="/portals/0/social/header_li.jpg" class="img-responsive"></a>
                                </div>
		                    </div>
		            </div> 
    	                <button type="button" onclick="return false" class="dg_toggle btn btn-responsive-nav btn-inverse" data-toggle="collapse"
                        data-target=".nav-main-collapse">
                        <em class="glyphicon glyphicon-align-justify"></em>
                        </button>
                </div>

            </div>


            <div class="navbar-collapse nav-main-collapse collapse">
                <div class="container dg_max dg_maxnav dg_nopad">
                <div class="dg_navgrad"></div>
                    <dnn:MENU ID="MENU1" MenuStyle="Resources/Menu" runat="server" NodeManipulator="Mandeeps.DNN.Modules.PortoMegaMenu.Components.NodeManipulator, Mandeeps.DNN.Modules.PortoMegaMenu"
                        class="nav nav-pills nav-main">
                    </dnn:MENU>
                </div>
            </div>

        </header>

        <div class="main"></div>