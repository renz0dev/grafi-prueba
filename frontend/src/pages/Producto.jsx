import React, { useEffect, useState } from "react";
import { Share2, PhoneIcon as WhatsApp } from "lucide-react";
import { Button } from "../components/ui/button";
import { Badge } from "../components/ui/badge";
import axios from "axios";
import { useParams, NavLink } from "react-router-dom";
import { PaymentMethods } from "../components/PaymentMethods";
import ProductItem from '../components/ProductItem';

export default function Producto() {
  const { id } = useParams(); // Obtener el ID del producto desde la URL
  const [product, setProducto] = useState(null);
  const [productosRelacionados, setProductosRelacionados] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchProducto = async () => {
      const token = "5e58a170a0b599511b621cbe713a18540ea4710a";
      try {
        // Obtener el producto principal
        const response = await axios.get(`http://localhost:8000/api/products/${id}/`, {
          headers: {
            Authorization: `Token ${token}`,
          },
        });

        const producto = response.data;
        setProducto(producto);
        //console.log("Producto principal:", producto); // Verificar datos del producto principal

        // Obtener productos relacionados usando category_id
        if (producto.category_id) {
          const categoriaId = producto.category_id;
          //console.log("ID de la categoría del producto principal:", categoriaId); // Verificar categoría

          // Consulta con filtro de categoría
          const responseRelacionados = await axios.get(
            `http://localhost:8000/api/products/?category=${categoriaId}`,
            {
              headers: { Authorization: `Token ${token}` },
            }
          );

          //console.log("Productos relacionados sin filtrar:", responseRelacionados.data); // Verificar respuesta de la API

          // Filtrar para excluir el producto principal
          const relacionados = responseRelacionados.data.filter((item) => item.id !== producto.id);
          setProductosRelacionados(relacionados);
          //console.log("Productos relacionados filtrados:", relacionados); // Verificar productos finales
        } else {
          console.log("El producto no tiene una categoría asociada.");
          setProductosRelacionados([]);
        }
      } catch (error) {
        setError("Error al cargar el producto.");
        console.error("Error:", error);
      } finally {
        setLoading(false);
      }
    };

    fetchProducto();
  }, [id]);

  if (loading) {
    return <p className="text-center">Cargando producto...</p>;
  }

  if (error) {
    return <p className="text-center text-red-600">{error}</p>;
  }

  return (
    <div className="max-w-7xl mx-auto p-4 md:p-6">
      {/* Detalles del Producto */}
      <div className="grid md:grid-cols-2 gap-8">
        <div className="relative">
          {product.is_new && (
            <Badge className="absolute top-4 left-4 z-10 bg-red-600 text-white">Nuevo</Badge>
          )}
          <div className="aspect-square relative">
            <img
              src={product.image}
              alt={product.name}
              className="object-cover rounded-lg"
              width={600}
              height={600}
            />
          </div>
        </div>

        <div className="space-y-6">
          <h1 className="text-2xl font-bold">{product.name}</h1>
          <div className="flex items-center gap-2">
            <span className="text-2xl font-bold text-red-600">S/ {product.price}</span>
            {product.original_price && (
              <span className="text-sm text-gray-500 line-through">
                S/ {product.original_price}
              </span>
            )}
          </div>

          <div>
            <h2 className="font-semibold text-lg">Especificaciones:</h2>
            <ul className="list-disc ml-4 text-sm">
              {product.description?.split("•").map((item, index) => (
                <li key={index}>{item.trim()}</li>
              ))}
            </ul>
          </div>

          <PaymentMethods />

          <Button
            className="bg-green-500 hover:bg-green-600 text-white"
            onClick={() =>
              window.open(
                `https://wa.me/952606981?text=Me%20interesa%20el%20producto:%20${encodeURIComponent(
                  product.name
                )}`,
                "_blank"
              )
            }
          >
            <WhatsApp className="w-4 h-4 mr-2" />
            Comprar por WhatsApp
          </Button>
        </div>
      </div>

      {/* Productos Relacionados */}
      <div className="mt-12">
        <h2 className="text-2xl font-bold mb-6">Productos Relacionados</h2>
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 px-4">
          {productosRelacionados.length > 0 ? (
            productosRelacionados.map((relacionado) => (
              <ProductItem
                  key={relacionado.id}
                  id={relacionado.id}
                  image={relacionado.image}
                  name={relacionado.name}
                  price={relacionado.price}
                  stock={relacionado.stock}
                  sku={relacionado.sku}
                />
            ))
          ) : (
            <p className="col-span-full text-gray-500">No hay productos relacionados.</p>
          )}
        </div>
      </div>
    </div>
  );
}
