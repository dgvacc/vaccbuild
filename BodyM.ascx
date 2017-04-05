<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="Mandeeps.DNN.Skins.Porto.Home" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light"
    rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/Portals/_default/Skins/Porto/SideMenu.css" />
<link href="<%= SkinPath %>/style_content.css" rel="stylesheet" type="text/css" />
<link href="<%= SkinPath %>/style_news.css" rel="stylesheet" type="text/css" />
<link href="<%= SkinPath %>/style_nav.css" rel="stylesheet" type="text/css" />

<!-- Glyphicon height issue | base-1 vs bodym.base-1-->
    <style>
    .dg_utility_search .glyphicon {
        line-height: 1;
    }
    </style>

<!--#include file ="dg_header.ascx"-->

    <div role="main">
        <asp:PlaceHolder ID="pcBreadcrumb" runat="server" Visible="false">
            <section class="page-top basic">
                <div class="page-top-info container">
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="breadcrumb">
                                <li>
                                    <dnn:BREADCRUMB ID="dnnBreadcrumb" runat="server" CssClass=" " RootLevel="0" Separator=" / " />
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <h1><%= Server.HtmlEncode(PortalSettings.ActiveTab.TabName) %></h1>
                        </div>
                    </div>
                </div>
            </section>
        </asp:PlaceHolder>
    <div class="responsive_img_class_for_noobs_who_know_nothing_about_code">
        <div id="ContentPaneFull" runat="server">
        </div>

        <div class="container">
            <div id="containercenter" class="col-md-12" runat="server">
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-sm-9 col-sm-push-3 dg_addclass">
                    <div id="contentPane" runat="server">
                    </div>
                <!--!Mikas edit-->
                    <div class="row">
                        <div class="col-md-3">
                            <div id="contentPaneTwo" runat="server"> </div>
                        </div>
                        <div class="col-md-9">
                            <div id="contentPaneThree" runat="server"> </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-9">
                            <div id="contentPaneFour" runat="server"> </div>
                        </div>
                        <div class="col-md-3">
                            <div id="contentPaneFive" runat="server"> </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div id="contentPaneSix" runat="server"> </div>
                        </div>
                    </div>
                <!--end mikas edit-->

                </div>
                <div class="col-sm-3 col-sm-pull-9">
                    <nav>
                        <dnn:MENU ID="bootstrapNav2" MenuStyle="Resources/VerticalMenu" runat="server" NodeSelector="RootChildren">
                        </dnn:MENU>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    </div>

    <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-12 hidden-sm hidden-xs">
                    <div id="FooterTop" runat="server">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-8 visible-sm visible-xs">
                    <div id="FooterLeftOuter" runat="server">
                    </div>
                </div>
                <div class="col-sm-4 visible-sm visible-xs">
                    <div id="FooterRightOuter" runat="server">
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <span class="copyright">&copy;</span>
                        <dnn:COPYRIGHT ID="dnnCopyright" CssClass="copyright" runat="server" />
                        <dnn:TERMS ID="dnnTerms" CssClass="terms" runat="server" />
                        <dnn:PRIVACY ID="dnnPrivacy" CssClass="privacy" runat="server" />
                    </div>
                </div>
            </div>
        </div>

    </footer>

    <asp:Literal ID="LicenseMessage" runat="server"></asp:Literal>
    <div class="layout_trigger">
    </div>
</div><dnn:DnnCssInclude runat="server" FilePath="BodyM.theme.css" PathNameAlias="SkinPath" Priority="100" ForceProvider="DnnPageHeaderProvider" />

<dnn:DnnJsInclude runat="server" FilePath="DGTest.js" PathNameAlias="SkinPath" Priority="101" ForceProvider="DnnFormBottomProvider" />

<script type="text/javascript">jQuery('#login').find('a').removeAttr('onclick'); jQuery('#login').children('a').removeAttr('onclick');</script>

 <div class="addthis_inline_share_toolbox"></div>

<!-- Chat -->
<!--======-->
<script type='text/javascript'>
    var __ac = {};
    __ac.uid = "bdc32c852e59ad7d144d79712d027eb7";
    __ac.server = "secure.chatrify.com";
    __ac.group_id = "8";

    (function() {
    var ac = document.createElement('script'); ac.type = 'text/javascript'; ac.async = true;
    ac.src = 'https://cdn.chatrify.com/go.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ac, s);
    })();
</script>
