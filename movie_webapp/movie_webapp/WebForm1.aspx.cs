using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace movie_webapp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from movies",con);
            grd_dataset.DataSource = cmd.ExecuteReader();
            grd_dataset.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into movies(movie_Name, lead_actor, actress, release_year, director_name) Values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox5.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con);
            cmd.ExecuteNonQuery();

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("Update movies set movie_Name='" + TextBox1.Text + "', lead_actress='" + TextBox2.Text + "',actress= '" + TextBox5.Text + "',release_year='" + TextBox3.Text + "',director_name='" + TextBox4.Text + "' where movie_id= '" + txtmovid.Value + "'", con);
            cmd.ExecuteNonQuery();
        }

        protected void grd_dataset_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}