﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Minor_Project_Admin_ManageUser : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select userid,first_name+' '+last_name as name,city,state,country,mobile,email from tbl_user";
        cmd.Connection.Open();
        SqlDataReader rdr = cmd.ExecuteReader();
        DataTable tbl = new DataTable();
        tbl.Load(rdr);
        cmd.Connection.Close();
        Session["userid"] = tbl.Rows[0]["userid"].ToString();
        GridView1.DataSource = tbl;
        GridView1.DataBind();
    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}