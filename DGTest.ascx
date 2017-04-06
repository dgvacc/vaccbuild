<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="Mandeeps.DNN.Skins.Porto.Home" %>
<asp:Label ID="lblHelloMsg" runat="server" CssClass="SubHead"></asp:Label>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/Portals/_default/Skins/Porto/SideMenu.css" />
<link href="<%= SkinPath %>/style_home.css" rel="stylesheet" type="text/css" />
<link href="<%= SkinPath %>/style_news.css" rel="stylesheet" type="text/css" />
<link href="<%= SkinPath %>/style_dgwp.css" rel="stylesheet" type="text/css" />


<!-- Glyphicon height issue | base-1 vs bodym.base-1-->
    <style>
    .dg_utility_search .glyphicon {
        line-height: inherit;
    }
    </style>

<!--#include file ="dg_header.ascx"-->

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

        <div id="ContentPaneFull" class="visible-md visible-lg dg_sliderwrap" runat="server">
        </div>

        <div id="contentPaneMobSlider" class="visible-xs visible-sm dg_mobsliderwrap" runat="server">
        </div>

        <div id="contentPane" runat="server">
        </div>
<!-- FIND A MEMBER -->   
        <div id="TopPaneFull" runat="server">
        </div>
<!-- END FIND A MEMBER -->
<!-- WHO WE ARE -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 dg_nopad">
                    <div class="countbannerT"></div>
                </div>
            </div>
        </div>
        <div id="TopPaneFull1" class="dg_welcome" runat="server">
        </div>
<!-- END WHO WE ARE -->
<!-- COUNTDOWN -->
        <div id="BottomPaneFull">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 dg_nopad">
                        <div class="countbannerB"></div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="CountdownPane" runat="server"></div>
                    </div>
                </div>
            </div>
        </div>
<!-- END COUNTDOWN -->
<!-- FEATURED MEMBER -->
        <div id="TopUpperPaneFull" runat="server">
        </div>
<!-- END FEATURED MEMBER -->
<!-- BLOG MODULES -->
    <div id="MiddlePaneFull">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div id="LeftPane1" runat="server">
                    </div>
                    <div id="LeftPane2" class="appear-animation" data-appear-animation="fadeInLeft" data-appear-animation-delay="300" runat="server">
                    </div>
                </div>
                <div class="col-md-6">
                    <div id="RightPane1" runat="server">
                    </div>
                    <div id="RightPane2" class="appear-animation" data-appear-animation="fadeInRight" data-appear-animation-delay="300" runat="server">
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- END BLOG MODULES -->
<!-- BRANDS SECTION -->
<div id="TopLowerPaneFull" runat="server">
</div>
<!-- END BRANDS SECTION -->

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
</div>
<dnn:DnnCssInclude runat="server" FilePath="DGTest.theme.css" PathNameAlias="SkinPath" Priority="100" ForceProvider="DnnPageHeaderProvider" />

<dnn:DnnJsInclude runat="server" FilePath="DGTest.js" PathNameAlias="SkinPath" Priority="101" ForceProvider="DnnFormBottomProvider" />

<script type="text/javascript">jQuery('#login').find('a').removeAttr('onclick'); jQuery('#login').children('a').removeAttr('onclick');</script>

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