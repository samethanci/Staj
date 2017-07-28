using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Threading;

namespace Staj
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection();
            SqlCommand komut = new SqlCommand();
            SqlDataReader dr;
            String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            baglanti.ConnectionString = strConnString;
            komut.Connection = baglanti;

            komut.CommandText = "Select * From TBL_KULLANICI"
                                 +" where kullanici_ad = kullanici_ad"
                                 +" and kullanici_sifre = kullanici_sifre";
            komut.Parameters.AddWithValue("kullanici_ad", txtKullaniciAdi.Text);
            komut.Parameters.AddWithValue("kullanici_sifre", txtSifre.Text);
            try
            {
                if (baglanti.State != ConnectionState.Open)
                { baglanti.Open(); }
                dr = komut.ExecuteReader();
                if (dr.Read())
                {
                    Session["kullanici_ad"] = dr["kullanici_ad"];
                    Session["kullanici_sifre"] = dr["kullanici_sifre"];
                    Response.Redirect("GridView.aspx");
                }
                else
                {
                    lbl_Hata.ForeColor = System.Drawing.Color.Red;
                    lbl_Hata.Text = "Lütfen Bilgilerinizi Kontrol Ediniz."; 
                }
            }
            catch (Exception ex)
            {
                lbl_Hata.ForeColor = System.Drawing.Color.Red;                            
                lbl_Hata.Text = "HATA : " + ex.Message + "!";
            }
            finally
            {
                baglanti.Close();
                baglanti.Dispose();
                komut.Parameters.Clear();
                komut.Dispose();
            }
        }
    }
}