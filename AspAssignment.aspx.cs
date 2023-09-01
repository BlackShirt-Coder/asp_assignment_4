using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class AspAssignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ListBox2.GetSelectedIndices().Count() == 2)
            {
                lblSelectedMembers.Text = null;
                string[] students = new string[3];
                int i = 0;
                Session["group member"] = ListBox1.SelectedValue;
                foreach (ListItem item in ListBox2.Items)
                {
                    if (item.Selected)
                    {
                        students[i] = item.ToString();
                        i++;
                    }
                }
                   Session["Student1"]=students[0];
                   Session["Student2"]=students[1];
                   Session["Answer"] = txtAnswer.Text;
                   Response.Redirect("AssignmentSubmission.aspx");


            }
            else
            {
                lblSelectedMembers.Text = "Select 2 Members";
            }
        }
    }
}