using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (ECommPracticeEntities db = new ECommPracticeEntities())
        {
            var categories = db.GetCategories().ToList();
            gv.DataSource = categories;
            gv.DataBind();
            string cookiValue;
            if (Request.Cookies["userCart"] != null)
            {
                cookiValue = Request.Cookies["userCart"].ToString();
               
            }
            else
            {
                Random num = new Random();
                int randomNum = num.Next();
                Response.Cookies["userCart"]["rand"] = randomNum.ToString();
            }
            

        }
    }
    protected void gv_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        using(ECommPracticeEntities db = new ECommPracticeEntities())
        {
            if(e.CommandName == "showProducts")
            {
                int Id = Convert.ToInt32(e.CommandArgument);
                var products = db.GetProducts(Id).ToList();
                lvProducts.DataSource = products;
                lvProducts.DataBind();
            }
           
        }
    }
    protected void lvProducts_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        using(ECommPracticeEntities db = new ECommPracticeEntities())
        {
            if(e.CommandName == "addToCart")
            {
                if(Request.Cookies["userCart"].Value != null)
                {
                    //Response.Write(Request.Cookies["userCart"]["rand"]);
                    //var n = Response.Cookies["userCart"]["rand"];
                    //Response.Write(n);
                    tblMyTemp temp = new tblMyTemp();
                    int ProductId = Convert.ToInt32(e.CommandArgument);
                    DateTime dateTime = DateTime.Now;
                    temp.ProductID = ProductId;
                    var ran = Request.Cookies["userCart"]["rand"];
                    temp.Random = long.Parse(ran);
                    temp.DateTime = dateTime;
                    db.tblMyTemps.Add(temp);
                    db.SaveChanges();

                    Response.Write("Item added to cart");
                }
                //Response.Write(Request.Cookies["CartUser"].Value);
                

            }
        }
    }
}