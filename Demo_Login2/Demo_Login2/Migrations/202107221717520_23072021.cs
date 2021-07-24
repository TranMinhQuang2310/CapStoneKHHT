namespace Demo_Login2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _23072021 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.KhoaDaoTaos", "IDLoaiHinhDaoTao", c => c.Int());
            CreateIndex("dbo.KhoaDaoTaos", "IDLoaiHinhDaoTao");
            AddForeignKey("dbo.KhoaDaoTaos", "IDLoaiHinhDaoTao", "dbo.LoaiHinhDaoTaos", "ID");
            DropColumn("dbo.KhoaDaoTaos", "LoaiHinhDaoTao");
        }
        
        public override void Down()
        {
            AddColumn("dbo.KhoaDaoTaos", "LoaiHinhDaoTao", c => c.Int(nullable: false));
            DropForeignKey("dbo.KhoaDaoTaos", "IDLoaiHinhDaoTao", "dbo.LoaiHinhDaoTaos");
            DropIndex("dbo.KhoaDaoTaos", new[] { "IDLoaiHinhDaoTao" });
            DropColumn("dbo.KhoaDaoTaos", "IDLoaiHinhDaoTao");
        }
    }
}
