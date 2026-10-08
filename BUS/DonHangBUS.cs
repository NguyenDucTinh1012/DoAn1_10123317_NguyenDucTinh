using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using DTO;
using DAL;


namespace BUS
{
    public class DonHangBUS
    {
        DonHangDAL DonHangDAL = new DonHangDAL();
      
       
        public bool insertDonHang(DonHangDTO donHang)
        {
            return DonHangDAL.insertDonHang(donHang);
        }
       
       
    }
}
