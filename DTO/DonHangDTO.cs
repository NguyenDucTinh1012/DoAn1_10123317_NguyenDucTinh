using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DoAn1.DTO;

namespace DTO
{
    public class DonHangDTO
    {
     
        string maDonHang;
       DateTime ngayDat;
        public string MaDonHang { get => maDonHang; set => maDonHang = value; }

        public DateTime NgayDat { get => ngayDat; set => ngayDat = value; }

    
        public DonHangDTO(string MaDonHang,DateTime NgayDat)
        {
            this.MaDonHang = MaDonHang;

            this.NgayDat = NgayDat;

        }

        public DonHangDTO(DataTable row)
        {
            this.MaDonHang = row.Rows[0]["MaDonHang"].ToString();
         
            this.NgayDat = Convert.ToDateTime(row.Rows[0]["NgayDat"]);
        }
    }
}
