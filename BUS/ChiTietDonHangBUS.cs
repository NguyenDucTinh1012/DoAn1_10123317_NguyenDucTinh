using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using DoAn1.DTO;
using DAL;
using System.Collections;
using DTO;


namespace BUS
{
    public class ChiTietDonHangBUS
    {
        ChiTienDonHangDAL ctdhDAL = new ChiTienDonHangDAL();

        public bool ThemChiTietDonHang(ChiTietDonHangDTO ctdh)
        {
            return ctdhDAL.ThemChiTietDonHang(ctdh);
        }
<<<<<<< HEAD
     
=======
        public bool DeleteChiTietDonHang(string maDonHang, string maMonAn)
        {
            return ctdhDAL.DeleteChiTietDonHang(maDonHang, maMonAn);
        }
>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa

        public DataTable getChiTietDonHangByMaDonHang(string maDonHang)
        {
            return ctdhDAL.getChiTietDonHangByMaDonHang(maDonHang);
        }
<<<<<<< HEAD
        
=======
        public bool deleteChiTietDonHangByMaDonHang(string maDonHang)
        {
            return ctdhDAL.deleteChiTietDonHangByMaDonHang(maDonHang);
        }
>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa
    }
}
