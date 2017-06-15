package model.bean;

public class TaiKhoan {
	public String getMaTrinhDoTiengAnh() {
		return maTrinhDoTiengAnh;
	}

	public String getMaCongViecHienTai() {
		return maCongViecHienTai;
	}

	public String getMaThanhVien() {
		return maThanhVien;
	}

	public void setMaThanhVien(String maThanhVien) {
		this.maThanhVien = maThanhVien;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getTenDangNhap() {
		return tenDangNhap;
	}

	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	

	public void setMaTrinhDoTiengAnh(String trinhDoTiengAnh) {
		this.maTrinhDoTiengAnh = trinhDoTiengAnh;
	}

	

	public void setMaCongViecHienTai(String congViecHienTai) {
		this.maCongViecHienTai = congViecHienTai;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(String ngaySinh) {
		if (!ngaySinh.equals("")) {
			String[] catNgay = ngaySinh.split("-");
			this.ngaySinh = "'" + catNgay[2] + "-" + catNgay[1] + "-"
					+ catNgay[0] + "'";
		} else
			this.ngaySinh = null;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getSoThich() {
		return soThich;
	}

	public void setSoThich(String soThich) {
		this.soThich = soThich;
	}

	public String getAnhDaiDien() {
		
			return "nguoidang.png";
	}

	public void setAnhDaiDien(String anhDaiDien) {
		this.anhDaiDien = anhDaiDien;
	}

	private String maThanhVien;
	private String hoTen;
	private String tenDangNhap;
	private String email;
	private String matKhau;
	private String maTrinhDoTiengAnh;
	private String maCongViecHienTai;
	private String diaChi;
	private String ngaySinh;
	private String gioiTinh;
	private String soDienThoai;
	private String soThich;
	private String anhDaiDien;

}
