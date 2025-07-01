using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Builder;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;

using SysTickAPI.AppDbContext;
using SysTickAPI.Repos;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddCors();
builder.Services.AddAuthentication(options =>
{
    options.DefaultAuthenticateScheme = CookieAuthenticationDefaults.AuthenticationScheme;
    options.DefaultChallengeScheme = CookieAuthenticationDefaults.AuthenticationScheme;
})
.AddCookie(options =>
{
    options.LoginPath = "/swagger/index.html"; // Set the login path
    options.LogoutPath = "/swagger/index.html"; // Set the logout path
});
////************* call connection string manually
var provider = builder.Services.BuildServiceProvider();
var config = provider.GetRequiredService<IConfiguration>();
builder.Services.AddDbContext<TicketBookingdbContext>(item =>
{
    item.UseSqlServer(config.GetConnectionString("TicketBookingDbConnection"));
    item.UseQueryTrackingBehavior(QueryTrackingBehavior.NoTracking);
});

builder.Services.AddTransient<IPassanger, PassangerRepository>();
builder.Services.AddMemoryCache();
// Add CORS policy
builder.Services.AddCors(options =>
{
    options.AddPolicy("ReactAppPolicy", policy =>
    {
        policy.WithOrigins("http://localhost:3000") // React app's origin
              .AllowAnyHeader()                   // Allow any headers (e.g., Content-Type)
              .AllowAnyMethod();                  // Allow GET, POST, PUT, DELETE, etc.
    });
});
var app = builder.Build();
//app.Usecores(op => op.WithOrgins("http://localhost:3000").AllowAnyHeader().AllowAnyMethod());
// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}
app.UseCors("ReactAppPolicy");
app.UseHttpsRedirection();

app.UseAuthentication(); // Must be added before UseAuthorization
app.UseAuthorization();

app.MapControllers();

app.Run();
