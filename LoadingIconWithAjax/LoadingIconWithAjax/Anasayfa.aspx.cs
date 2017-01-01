using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoadingIconWithAjax
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //uygulamayı 5 saniye bekletiyoruz.
            //Bu süre zarfında updatapanel güncellenirken updateprogress aktif hale geliyor.
            System.Threading.Thread.Sleep(5000);
            DBDataContext db = new DBDataContext();
            var i = from a in db.GetTable<Gezi_Tablom>() select a;
            GridView1.DataSource = db.Gezi_Tabloms;
            GridView1.DataBind();
        }
    }
}