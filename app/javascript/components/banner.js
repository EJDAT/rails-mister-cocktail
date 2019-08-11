import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Alcohol is more enjoyable if consumed in moderation", "Il n'y a pas de bonne fête sans lendemain", "Un lendemain de fête, tout fêtard devient philosophe", "Un verre à moitié plein ou à moitié vide ça fait toujours une bonne soirée."],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
