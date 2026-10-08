using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DTO;


namespace DAL
{
    public class DonHangDAL : DBconnect
    {
        DBconnect dBconnect = new DBconnect();
       

        public bool insertDonHang(DonHangDTO donHang)
        {
            string ngayDat = donHang.NgayDat.ToString("yyyy-MM-dd HH:mm:ss");
       
            string query = string.Format("INSERT INTO DonHang (MaDonHang, NgayDat) VALUES ('{0}', '{1}')",
                donHang.MaDonHang, ngayDat);

            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            int result = cmd.ExecuteNonQuery();
            con.Close();
            return result > 0;
        }


    }
}
