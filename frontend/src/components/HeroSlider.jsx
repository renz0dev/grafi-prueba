import React from "react";
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

const HeroSlider = () => {
  // Configuración del slider
  const settings = {
    dots: true, // Mostrar puntos de navegación
    infinite: true, // Repetir las diapositivas
    speed: 500, // Velocidad de transición
    slidesToShow: 1, // Mostrar una diapositiva a la vez
    slidesToScroll: 1, // Cuántas diapositivas se avanzan
    autoplay: true, // Reproducción automática
    autoplaySpeed: 3000, // Velocidad de reproducción automática
  };
  
  return (
    <div className="hero-slider">
      <Slider {...settings}>
        {/* Diapositiva 1 */}
        <div>
          <img
            src="/src/assets/banner-general1.png"
            alt="Banner 1"
            className="w-full h-[400px] object-cover"
          />
        </div>
        {/* Diapositiva 2 */}
        <div>
          <img
            src="/src/assets/banner-general2.png"
            alt="Banner 2"
            className="w-full h-[400px] object-cover"
          />
        </div>
        {/* Diapositiva 3 */}
        <div>
          <img
            src="/src/assets/banner-general3.png"
            alt="Banner 3"
            className="w-full h-[400px] object-cover"
          />
        </div>
        {/* Diapositiva 4 */}
        <div>
          <img
            src="/src/assets/banner-general4.png"
            alt="Banner 1"
            className="w-full h-[400px] object-cover"
          />
        </div>
        {/* Diapositiva 5 */}
        <div>
          <img
            src="/src/assets/banner-general5.png"
            alt="Banner 1"
            className="w-full h-[400px] object-cover"
          />
        </div>
      </Slider>
    </div>
  );
};

export default HeroSlider;