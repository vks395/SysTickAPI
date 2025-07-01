using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using SysTickAPI.Models;



namespace SysTickAPI.AppDbContext
{
    public class TicketBookingdbContext:DbContext
    {
        public TicketBookingdbContext(DbContextOptions<TicketBookingdbContext> options) : base(options)
        {

        }

        ////OnConfiguring() method is used to select and configure the data source
        //protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        //{
        //    //Configuring the Connection String
        //    var configBuilder = new ConfigurationBuilder().AddJsonFile("appsettings.json").Build();
        //    // Step3: Get the Section to Read from then Configuration File
        //    var configSection = configBuilder.GetSection("ConnectionStrings");
        //    // Step4: Get the Configuration Values based on the Config key.
        //    var connectionString = configSection["TicketBookingDbConnection"] ?? null;

        //    //Configuring the Connection String
        //    optionsBuilder.UseSqlServer(connectionString);
        //    optionsBuilder.UseQueryTrackingBehavior(QueryTrackingBehavior.NoTracking);
        //}
        ////OnModelCreating() method is used to configure the model using ModelBuilder Fluent API
        //protected override void OnModelCreating(ModelBuilder modelBuilder)
        //{
        //    //use this to configure the model
        //}
        //Adding Domain Classes as DbSet Properties
        public DbSet<Passanger> Passangers { get; set; }
        public DbSet<UserInfo> UserInfos { get; set; }

    }
}
