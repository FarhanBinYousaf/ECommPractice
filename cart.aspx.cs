using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cart : System.Web.UI.Page
{
    public decimal price=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        using(ECommPracticeEntities db = new ECommPracticeEntities())
        {
            if(Request.Cookies["userCart"] != null)
            {
                var randomID =  Request.Cookies["userCart"]["rand"];
                var cartedItems = db.CartedProducts(long.Parse(randomID)).ToList();
                ShoppingCart.DataSource = cartedItems;
                ShoppingCart.DataBind();
                foreach(var PriceTotal in cartedItems)
                {
                    var EachPrice = PriceTotal.ProPrice;
                    price = price + EachPrice;
                }
            }
            
        }
    }
    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        using (ECommPracticeEntities db = new ECommPracticeEntities())
        {
            tblOrderMain data = new tblOrderMain();
            data.Name = txtName.Text;
            data.Email = txtEmail.Text;
            db.tblOrderMains.Add(data);
            db.SaveChanges();
            int orderID = data.OrderID;
                var randomID = long.Parse(Request.Cookies["userCart"]["rand"]);
            //tblMyTemp getData = db.tblMyTemps.FirstOrDefault(v => v.Random == randomID);
                var items = db.CartedProducts(randomID).ToList();
                foreach (var item in items)
                {
                    var price = item.ProPrice;
                    var ids = item.ProductID;
                    tblOrderDetail detail = new tblOrderDetail();
                    detail.ProductID = ids;
                    detail.ProductPrice = price;
                    detail.OrderID = orderID;
                    db.tblOrderDetails.Add(detail);
                    db.SaveChanges();
                    
                }
                Response.Write("Order Confirmed");
                //int PId = getData.ProductID;
            //tblProduct getProductDetail = db.tblProducts.FirstOrDefault(p => p.ProID == PId);
           
        }
    }

    protected void btnChckout_Click(object sender, EventArgs e)
    {
        CnfrmOrder.Style.Add("visibility", "true");
        
    }
}