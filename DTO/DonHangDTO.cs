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
<<<<<<< HEAD
       DateTime ngayDat;
        public string MaDonHang { get => maDonHang; set => maDonHang = value; }
=======
        string maKhachHang;
        DateTime ngayDat;
        string trangThai;

        public string MaDonHang { get => maDonHang; set => maDonHang = value; }
        public string MaKhachHang { get => maKhachHang; set => maKhachHang = value; }
        public DateTime NgayDat { get => ngayDat; set => ngayDat = value; }
        public string TrangThai { get => trangThai; set => trangThai = value; }
>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa

        public DateTime NgayDat { get => ngayDat; set => ngayDat = value; }

    
        public DonHangDTO(string MaDonHang,DateTime NgayDat)
        {
            this.MaDonHang = MaDonHang;

            this.NgayDat = NgayDat;

        }

<<<<<<< HEAD
=======
        public DonHangDTO(string MaDonHang, string MaKhachHang, DateTime NgayDat, string TrangThai)
        {
            this.MaDonHang = MaDonHang;
            this.MaKhachHang = MaKhachHang;
            this.NgayDat = NgayDat;
            this.TrangThai = TrangThai;
        }

>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa
        public DonHangDTO(DataTable row)
        {
            this.MaDonHang = row.Rows[0]["MaDonHang"].ToString();
         
            this.NgayDat = Convert.ToDateTime(row.Rows[0]["NgayDat"]);
        }
    }
}
