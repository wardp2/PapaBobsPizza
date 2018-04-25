using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PapaBobsPizza
{
    public partial class PizzaOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void purchaseButton_Click(object sender, EventArgs e)
        {
            double total;

            /*  if (smallButton.Checked) ? total = 5 : total = 0;
              if (mediumButton.Checked) ? total = 7 : total = 0;
              if (largeButton.Checked) ? total = 9 : total = 0;*/

            if (smallButton.Checked)
            {
                total = 5;
            }
            else if (mediumButton.Checked)
            {
                total = 7;
            }
            else
            {
                total = 9;
            }


            if (deepdishButton.Checked) total += 2;

            total = (pepperoniBox.Checked) ? total + 2 : total;
            total = (chickenBox.Checked) ? total + 3 : total;
            total = (onionBox.Checked) ? total + .5 : total;
            total = (peppersBox.Checked) ? total + .75 : total;
            total = (olivesBox.Checked) ? total + .5 : total;

            if ((largeButton.Checked && peppersBox.Checked) || (mediumButton.Checked && pepperoniBox.Checked && chickenBox.Checked))
            {
                total = 10;
            }

            resultLabel.Text = total.ToString();

        }
    }
}