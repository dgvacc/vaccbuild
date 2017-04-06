<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="TemplateResultsControl.ascx.vb"
    Inherits="Aricie.DNN.Modules.LuceneSearch.UI.TemplateResultsControl" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="aricie" Namespace="Aricie.Web.UI.Controls" Assembly="Aricie.Core" %>
<%@ Register Assembly="Aricie.DNN.Modules.LuceneSearch" Namespace="Aricie.DNN.Modules.LuceneSearch.UI.Controls" TagPrefix="aricie" %>
<%@ Register Assembly="Aricie.DNN.Modules.LuceneSearch" Namespace="Aricie.DNN.Modules.LuceneSearch.UI.Controls.FieldControls" TagPrefix="aricie" %>
<div runat="server" id="trGroupSort">
    <div runat="server" id="tdGroupingfField">
        <div>
            <div>
                <div>
                    <dnn:label id="plGroupingfField" runat="server" suffix=":" cssclass="subhead">
                    </dnn:label>
                </div>
                <div>
                    <aricie:sortablefieldselector id="ctlGroupingField" autopostback="true" runat="server"
                        insertnullitem="true" localizenull="true" exclusiveselector="true" exclusivescopecontrolid="trGroupSort"
                        datatextfield="FriendlyName" datavaluefield="Id">
                    </aricie:sortablefieldselector>
                </div>
            </div>
        </div>
    </div>
    <div runat="server" id="tdSortingField">
        <div>
            <div>
                <div>
                    <dnn:Label ID="plSortingfField" runat="server" Suffix=":" CssClass="subhead">
                    </dnn:Label>
                </div>
                <div>
                    <aricie:sortablefieldselector ID="ctlSortingField" AutoPostBack="true" runat="server"
                        InsertNullItem="true" LocalizeNull="true" ExclusiveSelector="true" ExclusiveScopeControlId="trGroupSort"
                        DataTextField="FriendlyName" DataValueField="Id">
                    </aricie:sortablefieldselector>
                </div>
            </div>
        </div>
    </div>
</div>
<div runat="server" id="tdCustomPageSize">
    <div>
        <div>
            <div>
                <div>
                    <dnn:label id="lblCustomPageSize" runat="server" cssclass="subhead" />
                </div>
                <div>
                    <asp:DropDownList ID="ddlCustomPageSize" runat="server" AutoPostBack="true" Width="80px">
                        <asp:ListItem Value="Default" Text="Default"></asp:ListItem>
                        <asp:ListItem Value="5" Text="5"></asp:ListItem>
                        <asp:ListItem Value="10" Text="10"></asp:ListItem>
                        <asp:ListItem Value="15" Text="15"></asp:ListItem>
                        <asp:ListItem Value="25" Text="25"></asp:ListItem>
                        <asp:ListItem Value="50" Text="50"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
    </div>
</div>
<div>
    <div>
        <asp:Label runat="server" ID="lblNoResult" CssClass="lblResults"></asp:Label>
        <asp:Label runat="server" ID="lblNbPagesResult" CssClass="lblResults"></asp:Label>
    </div>
</div>
<div class="TemplateResults">
    <aricie:AdvancedGridView ID="dgAllresults" runat="server" GridLines="None"
        CellPadding="4" PagerStyle-CssClass="NormalBold" BorderStyle="None" PageSize="5"
        AllowPaging="True" ShowHeader="true" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField Visible="false" ReadOnly="true" />
            <asp:TemplateField SortExpression="Title">
                <HeaderTemplate>
                    <asp:Literal ID="ctlLuceneResult" runat="server" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Literal ID="ctlLuceneResult" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </aricie:AdvancedGridView>
    <asp:PlaceHolder runat="server" ID="phPager"></asp:PlaceHolder>
</div>
