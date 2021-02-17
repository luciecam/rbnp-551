import Typed from 'typed.js';

const initTyped = () => {
    
    var options = {
        strings: ["Cassez-vous le bide grâce à votre <strong>voisin</strong> !", "N'achetez plus vos propres appareils, louez-les près de chez vous !"],
        typeSpeed: 40,
        loop: true,
        loopCount: Infinity
    };
    
    var typed = new Typed('#banner-title', options);
}

export { initTyped }