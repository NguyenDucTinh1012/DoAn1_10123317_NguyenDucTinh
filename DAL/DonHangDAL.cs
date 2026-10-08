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
<<<<<<< HEAD
       
=======
        public DataTable getDonHang()
        {
            string query = @"
        SELECT 
            M.MaDonHang,
            M.MaKhachHang,
            T.TenNguoiNhan AS TenKhachHang,
            T.SoDienThoai,
            T.DiaChi,
            M.TrangThai
        FROM DonHang M
        INNER JOIN ThongTinNhanHang T ON M.MaDonHang = T.MaDonHang
    ";
            return dBconnect.getAll(query);
        }
>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa


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

<<<<<<< HEAD
=======
        public bool insertDonHang2(DonHangDTO donHang)
        {
            string ngayDat = donHang.NgayDat.ToString("yyyy-MM-dd HH:mm:ss");
            string maKhachHangParam = donHang.MaKhachHang == null ? "NULL" : $"'{donHang.MaKhachHang}'";
            string query = string.Format("INSERT INTO DonHang (MaDonHang, NgayDat, MaKhachHang, TrangThai) VALUES ('{0}', '{1}', {2}, N'{3}')",
                donHang.MaDonHang, ngayDat, maKhachHangParam, donHang.TrangThai);

            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            int result = cmd.ExecuteNonQuery();
            con.Close();
            return result > 0;
        }

        public bool deleteDonHang(string maDonHang)
        {
            con.Open();
            // First, delete related records in LichSuDatHang
            string deleteLichSuQuery = "DELETE FROM LichSuDatHang WHERE MaDonHang = @maDonHang";
            using (SqlCommand cmdLichSu = new SqlCommand(deleteLichSuQuery, con))
            {
                cmdLichSu.Parameters.AddWithValue("@maDonHang", maDonHang);
                cmdLichSu.ExecuteNonQuery();
            }

            // Then, delete the DonHang record
            string deleteDonHangQuery = "DELETE FROM DonHang WHERE MaDonHang = @maDonHang";
            using (SqlCommand cmdDonHang = new SqlCommand(deleteDonHangQuery, con))
            {
                cmdDonHang.Parameters.AddWithValue("@maDonHang", maDonHang);
                int result = cmdDonHang.ExecuteNonQuery();
                con.Close();
                return result > 0;
            }
        }
        public DataTable SearchDonHang(string keyword)
        {
            string query = "SELECT * FROM DonHang WHERE MaDonHang LIKE @keyword OR NgayDat LIKE @keyword";
            return dBconnect.getAll(query);
        }
        public bool updateTrangThaiDonHang(string maDonHang, string trangThai)
        {
            string query = string.Format("UPDATE DonHang SET TrangThai = N'{0}' WHERE MaDonHang = '{1}'", trangThai, maDonHang);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            int result = cmd.ExecuteNonQuery();
            con.Close();
            return result > 0;
        }
>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa

    }
}
