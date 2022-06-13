global using NETCore6_CRUD_Test.Services.UserService;
global using NETCore6_CRUD_Test.Services.EmailService;
global using NETCore6_CRUD_Test.Models;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using Swashbuckle.AspNetCore.Filters;
using System.Text;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();

// UserService
builder.Services.AddScoped<IUserService, UserService>(); 
builder.Services.AddHttpContextAccessor();

// EmailService
builder.Services.AddScoped<IEmailService, EmailService>();

// Swagger 加入驗證機制
builder.Services.AddSwaggerGen(options => {
    options.AddSecurityDefinition("oauth2", new OpenApiSecurityScheme
    {
        // 描述
        Description = "Standard Authorization header using the Bearer scheme (\"Bearer {token}\")",
        In = ParameterLocation.Header,
        Name = "Authorization",
        Type = SecuritySchemeType.ApiKey
    });

    options.OperationFilter<SecurityRequirementsOperationFilter>();
});

// Services 加入JWT驗證機制
builder.Services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
    .AddJwtBearer(options =>
    {
        options.TokenValidationParameters = new TokenValidationParameters
        {
            ValidateIssuerSigningKey = true,
            IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8
                .GetBytes(builder.Configuration.GetSection("SecretKey:Token").Value)),
            ValidateIssuer = false,
            ValidateAudience = false
        };
    });

// CORS
builder.Services.AddCors(options =>
{
    options.AddDefaultPolicy(
        policy =>
        {
            policy.WithOrigins("*").AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader();
        });
});

// 取得連線參數與 Token Secret Key
GlobalSystemVar.StrConnection1 = builder.Configuration.GetConnectionString("StrConnection1");
GlobalSystemVar.SecretKey = builder.Configuration.GetSection("SecretKey:Token").Value;

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthentication();

// CORS
app.UseCors();

// 驗證
app.UseAuthorization();

app.MapControllers();

app.Run();
