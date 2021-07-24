namespace Demo_Login2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _25072021 : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Accounts", "PhanLoai", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Accounts", "PhanLoai", c => c.Boolean(nullable: false));
        }
    }
}
