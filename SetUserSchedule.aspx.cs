using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class SetUserSchedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void JobPostingSubmit_Click(object sender, EventArgs e)
    {
        DateTime JobDate = DateTime.Parse(DD_DateMonth.SelectedValue + "-" + DD_DateDay.SelectedValue + "-" + DateTime.Now.Year);

        DateTime JobStartTime = DateTime.Parse(DD_StartTimeHour.SelectedValue + ":" + DD_StartTimeMin.SelectedValue + " " + DD_StartAmPm.SelectedValue);
        DateTime JobEndTime = DateTime.Parse(DD_EndTimeHour.SelectedValue + ":" + DD_EndTimeMin.SelectedValue + " " + DD_EndAmPm.SelectedValue);
        int a = InsertIntoDB(JobDate.ToShortDateString(), JobStartTime.ToShortTimeString(), JobEndTime.ToShortTimeString());
        if (a == 1)
        {
            ErrorLabel.Text = "Schedule Sucessfully posted";
            ErrorLabel.Visible = true;

        }
        else
        {
            ErrorLabel.Text = "There was an error, Schedule could not be posted";
            ErrorLabel.Visible = true;
        }
    }

    protected int InsertIntoDB(string JobDate, string JobStartTime, string JobEndTime)
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["login"].ConnectionString);
        SqlDataReader rdr;
        conn.Open();
        string query = "insert into EmpSchedule(ScheduleDate, ScheduleStartTime,ScheduleEndTime,EmpID) values ('" + JobDate + "','" + JobStartTime + "','" + JobEndTime + "'," + 1 + ")";
        SqlCommand comm = new SqlCommand(query, conn);
        int n = comm.ExecuteNonQuery();
        conn.Close();
        return n;
    }

}