using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace cal
{
    public partial class Form1 : Form

    {
        double value = 0;
        string ops = "";
       

       

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
           
        }

        private void btn_click(object sender, EventArgs e)
        {

            Button b = (Button)sender;
            
            double coba = Double.Parse(hasil.Text + b.Text);
            hasil.Text = coba.ToString();
            label1.Text += b.Text;
            label1.ForeColor = Color.DarkRed;

        }

        private void operator_click(object sender, EventArgs e)
        {            
            Button b = (Button)sender;
            ops = b.Text;
            value = Double.Parse(hasil.Text);

            label1.Text += " " + b.Text  + " ";
            hasil.Clear();
        }

        private void hitung(object sender, EventArgs e)
       

            {
                switch (ops)
                {
                    case "+":
                        hasil.Text = (value + Double.Parse(hasil.Text)).ToString();
                        break;
                    case "-":
                        hasil.Text = (value - Double.Parse(hasil.Text)).ToString();
                        break;
                    case "X":
                        hasil.Text = (value * Double.Parse(hasil.Text)).ToString();
                        break;
                    case "/":
                        hasil.Text = (value / Double.Parse(hasil.Text)).ToString();
                        break;
                
            }
           
        }

        private void clear(object sender, EventArgs e)
        {
            hasil.Text = "0";
            label1.Text = " ";
        }
        
        private void backspace(object sender, EventArgs e)
        {
            hasil.Text = hasil.Text.Remove(hasil.Text.Length - 1, 1);
            label1.Text = hasil.Text;
        }

        private void btn_coma(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            hasil.Text += b.Text ;
            label1.Text += b.Text;
        }
    }
}
