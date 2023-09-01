using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class AssignmentSubmission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["group member"]!=null){
            lblGroupNumber.Text = Session["group member"].ToString();
            lblStudent1.Text = Session["Student1"].ToString();
            lblStudent2.Text = Session["Student2"].ToString();
            lblAnswer.Text = Session["Answer"].ToString();
            }
            else
            {
                Response.Redirect("AspAssignment.aspx");
            }
        }
    }
}