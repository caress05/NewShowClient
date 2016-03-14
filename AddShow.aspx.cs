using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AddShow : System.Web.UI.Page
{
    Class1 c1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserKey"]== null)
            Response.Redirect("Default.aspx");
        if (!IsPostBack)
            SubmitArtist();
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        SubmitShow();
    }

    protected void SubmitButton1_Click(object sender, EventArgs e)
    {
        SubmitArtist();
    }
    protected void ArtistDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SubmitShow()
    {
        ServiceReference.LoginServiceClient slr = new ServiceReference.LoginServiceClient();

        ServiceReference.ShowLite sLite = new ServiceReference.ShowLite();

        sLite.Name = ShowNameTextBox.Text;
        sLite.VenueKey = (int)Session["UserKey"];
        sLite.Date = ShowDateCalendar.SelectedDate.ToShortDateString();
        sLite.Time = ShowTimeTextBox.Text;
        sLite.TicketInfo = ShowTicketInfoTextBox.Text;
        slr.AddShow(sLite);

        ServiceReference.ShowDetailLite sdLite = new ServiceReference.ShowDetailLite();

        sdLite.ArtistStartTime = ArtistStartTimeTextBox.Text;
        sdLite.Additional = AdditionalTextBox.Text;

        slr.AddShowDetail(sdLite);
    }
    protected void ShowDateCalendar_SelectionChanged(object sender, EventArgs e)
    {

    }
    protected void SubmitArtist()
    {
        DataTable table = null;
        try
        {
            table = c1.GetArtists();
        }
        catch (Exception ex)
        {
            ErrorLabel.Text = ex.Message;
        }
        ArtistDropDownList.DataSource = table;
        ArtistDropDownList.DataTextField = "ArtistName";
        ArtistDropDownList.DataValueField = "ArtistKey";
        ArtistDropDownList.DataBind();

        ServiceReference.LoginServiceClient los = new ServiceReference.LoginServiceClient();

        ServiceReference.ArtistLite aLite = new ServiceReference.ArtistLite();

        aLite.Name = NameTextBox.Text;
        aLite.Email = EmailTextBox.Text;
        aLite.WebPage = WebPageTextBox.Text;

        los.AddArtist(aLite);

    }
}