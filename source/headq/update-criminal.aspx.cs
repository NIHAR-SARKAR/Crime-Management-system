﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace crimemanageX.headq
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                validuser.Text = Session["adminrole"].ToString();
                if (!IsPostBack)
                {
                    GetData();
                    BindData();
                }
            }
            catch
            {
                Response.Redirect("~/headq/restricted.aspx");

            }
        }


        public void GetData()

        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("Select * from CriminalDetailsTable", con);
            DataSet ds = new DataSet();

            da.Fill(ds, "CriminalDetailsTable");
            DataTable dtemp = ds.Tables[0];

            Session["da"] = da;
            Session["dtemp"] = dtemp;
        }

        private void BindData()
        {
            gv_updatestation.DataSource = (DataTable)Session["dtemp"];
            gv_updatestation.DataBind();
        }
     
       

        protected void gv_updatestation_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            gv_updatestation.EditIndex = e.NewEditIndex;
            BindData();
        }

        protected void gv_updatestation_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            gv_updatestation.EditIndex = -1;
            BindData();
        }

        protected void gv_updatestation_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            TextBox txt1 = ((TextBox)gv_updatestation.Rows[e.RowIndex].FindControl("TextBox1"));
            TextBox txt2 = ((TextBox)gv_updatestation.Rows[e.RowIndex].FindControl("TextBox2"));
            TextBox txt3 = ((TextBox)gv_updatestation.Rows[e.RowIndex].FindControl("TextBox3"));
            TextBox txt4 = ((TextBox)gv_updatestation.Rows[e.RowIndex].FindControl("TextBox4"));
            TextBox txt5 = ((TextBox)gv_updatestation.Rows[e.RowIndex].FindControl("TextBox5"));
            TextBox txt6 = ((TextBox)gv_updatestation.Rows[e.RowIndex].FindControl("TextBox6"));

            ((DataTable)Session["dtemp"]).Rows[e.RowIndex][0] = txt1.Text;
            ((DataTable)Session["dtemp"]).Rows[e.RowIndex][1] = txt2.Text;
            ((DataTable)Session["dtemp"]).Rows[e.RowIndex][2] = txt3.Text;
            ((DataTable)Session["dtemp"]).Rows[e.RowIndex][3] = txt4.Text;
            ((DataTable)Session["dtemp"]).Rows[e.RowIndex][4] = txt5.Text;
            ((DataTable)Session["dtemp"]).Rows[e.RowIndex][6] = txt6.Text;

            SqlCommandBuilder cb = new SqlCommandBuilder((SqlDataAdapter)Session["da"]);
            ((SqlDataAdapter)Session["da"]).Update((DataTable)Session["dtemp"]);


            gv_updatestation.EditIndex = -1;
            GetData();
            BindData();
        }

        

        
        
        
    }

}