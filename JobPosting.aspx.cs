using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Net.Mail;
using System.Net;

public partial class Projects_Chartwells_JobPosting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void JobPostingSubmit_Click(object sender, EventArgs e)
    {
        DateTime JobDate = DateTime.Parse(DD_DateMonth.SelectedValue + "-" + DD_DateDay.SelectedValue + "-" + DateTime.Now.Year);
        DateTime JobStartTime = DateTime.Parse(DD_StartTimeHour.SelectedValue + ":" + DD_StartTimeMin.SelectedValue + " " + DD_StartAmPm.SelectedValue);
        DateTime JobEndTime = DateTime.Parse(DD_EndTimeHour.SelectedValue + ":" + DD_EndTimeMin.SelectedValue + " " + DD_EndAmPm.SelectedValue);
        int a = InsertIntoDB(JobDate.ToShortDateString(), JobStartTime.ToShortTimeString(), JobEndTime.ToShortTimeString(), int.Parse(DD_Area.SelectedValue));
        if (a == 1)
        {
            ErrorLabel.Text = "Job Sucessfully posted";
            ErrorLabel.Visible = true;
            MailLabel.Text = "Sending Emails for matching schedules";
            MailLabel.Visible = true;
            int i = CheckMatches(JobDate.ToShortDateString(), JobStartTime.ToShortTimeString(), JobEndTime.ToShortTimeString());
            MailLabel.Text = "Sent emails to " + i + "recepients";
        }
        else
        {
            ErrorLabel.Text = "There was an error, Job could not be created";
            ErrorLabel.Visible = true;
        }
    }

    protected int InsertIntoDB(string JobDate, string JobStartTime, string JobEndTime, int SelectedArea)
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["login"].ConnectionString);
        conn.Open();
        string query = "insert into dbo.JobPosting(JobDate, StartTime, EndTime,Area) values ('"+JobDate+"','"+JobStartTime+"','"+JobEndTime+"',"+SelectedArea+")";
        SqlCommand comm = new SqlCommand(query, conn);
        int n = comm.ExecuteNonQuery();
        conn.Close();
        return n;
    }

    protected int CheckMatches(string JobDate, string JobStartTime, string JobEndTime)
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["login"].ConnectionString);
        conn.Open();
        int count = 0;
        string query = "Select EmailID from Employee where EmpID in (select EmpID from EmpSchedule where ScheduleDate = '"+JobDate+"' and '"+JobStartTime+"' BETWEEN ScheduleStartTime and ScheduleEndTime and '"+JobEndTime+"' BETWEEN ScheduleStartTime and ScheduleEndTime)";
        SqlCommand comm = new SqlCommand(query, conn);
        //SqlDataReader reader = comm.ExecuteReader();
        SqlDataAdapter ada = new SqlDataAdapter(query,conn);
        DataTable dt = new DataTable();
        try
        {
            ada.Fill(dt);
            foreach (DataRow row in dt.Rows)
            {
                SendMatchingMail(row["EmailID"].ToString(), JobDate, JobStartTime, JobEndTime);
                count++;
            }
        }
        catch (Exception e)
        {
        }
        conn.Close();
        return count;
    }

    protected void SendMatchingMail(string emailid, string JobDate, string JobStartTime, string JobEndTime)
    {
        var fromAddress = new MailAddress("CompassGroupManager@gmail.com", "Compass Group");
        var toAddress = new MailAddress(emailid);
        const string fromPassword = "Reshu91!!";
        string subject = "Need Part time workers for " + JobDate;
        string body = " Howdy! " +
            "We need workers at one of our on-campus locations on " + JobDate + "from " + JobStartTime + "to" + JobEndTime + ".Please let us know if you are available by clicking on this link ";

        var smtp = new SmtpClient
        {
            Host = "smtp.gmail.com",
            Port = 587,
            EnableSsl = true,
            DeliveryMethod = SmtpDeliveryMethod.Network,
            Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
            Timeout = 20000
        };
        using (var message = new MailMessage(fromAddress, toAddress)
        {
            Subject = subject,
            Body = body
        })
        {
            smtp.Send(message);
        }


    }
}