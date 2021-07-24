namespace Demo_Login2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _24072021V1 : DbMigration
    {
        public override void Up()
        {
            CreateIndex("dbo.LopHocs", "IDKhoaDaoTao");
            AddForeignKey("dbo.LopHocs", "IDKhoaDaoTao", "dbo.KhoaDaoTaos", "ID");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.LopHocs", "IDKhoaDaoTao", "dbo.KhoaDaoTaos");
            DropIndex("dbo.LopHocs", new[] { "IDKhoaDaoTao" });
        }
    }
}
