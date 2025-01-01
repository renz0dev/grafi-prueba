import React, { useState } from "react";
import { FaInstagram, FaWhatsapp, FaYoutube } from "react-icons/fa";
import { FaXTwitter } from "react-icons/fa6";
import { FaFacebookF } from "react-icons/fa";
import { MdOutlinePermPhoneMsg } from "react-icons/md";
import { NavLink } from 'react-router-dom';
import { FaMapMarkedAlt, FaClock } from "react-icons/fa";
import { motion } from "framer-motion";

const Header = () => {
  return (
    <header>
      {/* Barra superior con redes sociales */}
      <div className="bg-yellow-400 py-2">
        <div className="container mx-auto flex justify-between items-center">
          {/* Redes sociales */}
          <div className="flex space-x-4">
            <a
              href="https://m.facebook.com/people/GrafiTacna-ILO/100089300966888/"
              className="text-black hover:text-blue-600 transition duration-300"
            >
              <FaFacebookF size={24} />
            </a>
            <a
              href="https://instagram.com"
              className="text-black hover:text-orange-600 transition duration-300"
            >
              <FaInstagram size={24} />
            </a>
            <a
              href="https://x.com"
              className="text-black hover:text-white transition duration-300"
            >
              <FaXTwitter size={24} />
            </a>
            <a
              href="https://wa.me/yourwhatsapplink"
              className="text-black hover:text-green-600 transition duration-300"
            >
              <FaWhatsapp size={24} />
            </a>
            <a
              href="https://youtube.com"
              className="text-black hover:text-red-600 transition duration-300"
            >
              <FaYoutube size={24} />
            </a>
          </div>

          {/* Horario de atención */}
          <div className="flex items-center text-black space-x-1 font-[Itim]">
            <FaClock size={20} className="mr-1" />
            <span className="text-sl">Lunes a Sábado 9am a 8pm</span>
          </div>
        </div>
      </div>

      {/* Barra de navegación principal */}
      <div className="bg-[#f6f6f6] py-4 shadow-md sticky top-0 z-50">
        <div className="container mx-auto flex justify-between items-center">
          {/* Logo */}
          <NavLink to="/">
            <img
              src="/src/assets/grafitacna-logo.png"
              alt="Logo GrafiTacna"
              className="h-[81px] w-[106px]"
            />
          </NavLink>

          {/* Barra de búsqueda */}
          <div className="flex items-center justify-center">
            <motion.p
              initial={{ scale: 0.5 }}
              animate={{ scale: 1.2 }}
              transition={{ duration: 0.8, ease: "easeOut" }}
              className="text-center text-3xl text-black animate-bounce font-[Itim]"
            >
              ¡Bienvenidos a GrafiTacna! Encuentra lo mejor en tecnología
            </motion.p>
          </div>

          {/* Información de contacto */}
          <div className="flex items-center space-x-2 font-[Itim]">
            <MdOutlinePermPhoneMsg className="text-black" size={25} />
            <div className="flex flex-col items-start">
              <span className="text-gray-700 font-semibold text-sm">Escríbenos</span>
              <p className="text-blue-600 text-sm">952 606 981</p>
            </div>
          </div>
        </div>
      </div>
    </header>
  );
};

export default Header;
