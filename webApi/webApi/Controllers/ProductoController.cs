using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Http;
using System.Net.Http;

namespace webApi.Controllers
{
    public class ProductoController : ApiController
    {
        [System.Web.Http.HttpPost]
        public IHttpActionResult add()
        { 
            using (Models.Bar1Entities db = new Models.Bar1Entities())
        
        {
        var oProducto = new Models.Productos();
                oProducto.nomProd= "Energizer";
                oProducto.descripcion = "Botella";
                oProducto.precio = Convert.ToDecimal(1.90); 
                oProducto.cantidad = 3;
                oProducto.estado = 4;
                db.Productos.Add(oProducto);
                db.SaveChanges();
            }

            return Ok("Hecho");

        }
    }
}
