namespace Demo_Login2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _20210721V1 : DbMigration
    {
        public override void Up()
        {
            DropTable("dbo.AccountDTOes");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.AccountDTOes",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Ma = c.String(),
                        IDKhoaDaoTao = c.Int(),
                        HoVaTen = c.String(),
                        MailVL = c.String(),
                        PhanLoai = c.Boolean(nullable: false),
                        DaXem = c.Boolean(nullable: false),
                        GhiChu = c.String(),
                    })
                .PrimaryKey(t => t.ID);
            
        }
    }
}
