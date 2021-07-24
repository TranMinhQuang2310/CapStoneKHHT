using Demo_Login2.Areas.AdminPage.Business;
using Demo_Login2.Models.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace Demo_Login2.Areas.AdminPage.Controllers
{
    public class AccountLopHocController : Controller
    {
        //LayDanhSachChuNhiem
        public ActionResult Index()
        {
            var lstacclop = this.LayDanhSachAccountLopHoc();
            return View(lstacclop);
        }
        public List<AccountLopHocDTO> LayDanhSachAccountLopHoc()
        {
            using (AccountLopHocBusiness bs = new AccountLopHocBusiness())
            {
                return bs.LayDanhSachAccountLopHoc();
            }
        }

        //Get : TaoChuNhiem
        public ActionResult Create()
        {
            ViewBag.account = new SelectList(LayDanhSachTaiKhoan(), "ID", "HoVaTen");
            //ViewBag.lophoc = new SelectList(LayDanhSachLopHoc(), "ID", "TenLop");
            return View();
        }
        //Post :TaoChuNhiem
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(AccountLopHocDTO acclop)
        {
            var output = ThemAccountLopHoc(acclop);
            if (output)
            {
                return RedirectToAction("Index");
            }
            else
            {
                return View("Fail");
            }
        }

        public List<AccountDTO> LayDanhSachTaiKhoan()
        {
            using (TaiKhoanBusiness bs = new TaiKhoanBusiness())
            {
                return bs.LayDanhSachTaiKhoan();
            }
        }

        //public List<LopHocDTO> LayDanhSachLopHoc()
        //{
        //    using (LopHocBusiness bs = new LopHocBusiness())
        //    {
        //        return bs.LayDanhSachLopHoc();
        //    }
        //}

        public bool ThemAccountLopHoc(AccountLopHocDTO acclop)
        {
            using (AccountLopHocBusiness bs = new AccountLopHocBusiness())
            {
                return bs.ThemAccountLopHoc(acclop);
            }
        }
    }
}