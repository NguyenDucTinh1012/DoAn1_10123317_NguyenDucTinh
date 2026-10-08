
using BUS;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DoAn1
{
    public partial class frmDangNhap : Form
    {
        public frmDangNhap()
        {
            InitializeComponent();
        }
        
        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            
        }

        private void chkHienMatKhau_CheckedChanged(object sender, EventArgs e)
        {
            if(chkHienMatKhau.Checked)
            {
                txtMatKhau.UseSystemPasswordChar = false;
            }
            else
            {
                txtMatKhau.UseSystemPasswordChar = true;
            }
        }

        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            string tenDangNhap = txtTenDangNhap.Text.Trim();
            string matKhau = txtMatKhau.Text.Trim();


                this.Hide();
                frmTrangChu frm = new frmTrangChu(); // Truyền cả ba tham số
                frm.ShowDialog();
                this.Close();
            
        }


        private void frmDangNhap_FormClosing(object sender, FormClosingEventArgs e)
        {
          
        }
    }
}
