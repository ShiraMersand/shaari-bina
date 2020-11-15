
using AutoMapper;
using BL2;
using DL1;
using Entities1.Models;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.OpenApi.Models;

namespace WebApplication1
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }
        // This method gets called by the runtime. Use this method to add services to the container.
        // For more information on how to configure your application, visit https://go.microsoft.com/fwlink/?LinkID=398940
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllers();

            services.AddScoped(typeof(ILocationBL), typeof(LocationBL));
            services.AddScoped(typeof(ILocationDL), typeof(LocationDL));
            services.AddScoped(typeof(IUserBL), typeof(UserBL));
            services.AddScoped(typeof(IUserDL), typeof(UserDL));
            services.AddScoped(typeof(IVideoBL), typeof(VideoBL));
            services.AddScoped(typeof(IVideoDL), typeof(VideoDL));

            services.AddDbContext<SR_projectContext>(options => options.UseSqlServer(Configuration.GetConnectionString("MyMioooooooooooo")));
            //@"Data Source = Server=DESKTOP-ROECGEC;Database = SR_project;Trusted_Connection=True;; Initial Catalog = miaooooooooooo; Integrated Security= True; pooling =False"));


             services.AddSwaggerGen(c => { c.SwaggerDoc("v1", new OpenApiInfo { Title = "MY API", Version = "V1" }); });

        }
        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            app.UseStaticFiles();
            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseSwagger();
            //app.UseSwaggerUI(c => {
            //    c.SwaggerEndpoint("/swagger/v1/swagger.json", "MyAPIV1");
            //});

            //app.UseEndpoints(endpoints =>
            //{
            //    endpoints.MapControllers();
            //});

            app.Map("/api", app2 =>
            {


                app.UseRouting();
                app.UseAuthentication();
                app.UseAuthorization();
                //app.UseMiddleware();
                //app.UseExeptionMiddleware();
                app.UseEndpoints(endpoints =>
                {
                    endpoints.MapControllers();
                });
            }
            );
        }
    }
}
