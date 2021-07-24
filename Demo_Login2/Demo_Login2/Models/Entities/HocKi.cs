﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Demo_Login2.Models.Entities
{
    public class HocKi
    {
        [Key]
        public int ID { get; set; }
        public string TenHocKi { get; set; }
        public int LoaiHocKi { get; set; }
        public string GhiChu { get; set; }
    }
}