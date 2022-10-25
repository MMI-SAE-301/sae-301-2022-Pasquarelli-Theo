export interface Montre {
  Bracelet?: string;
  Cadrant?: string;
  Ecran?: string;
}

export const colors = {
  "#000000": "Noir",
  "#FFFFFF": "Blanc",
  "#FF0000": "Rouge",
  "#00FF00": "Vert",
  "#0000FF": "Bleu",
  "#FFFF00": "Jaune",
  "#FF00FF": "Magenta",
  "#00FFFF": "Cyan",
  "#C0C0C0": "Gris clair",
  "#808080": "Gris",
  "#800000": "Marron",
  "#808000": "Olive",
};

export const materiaux = [
  {
    value: "fd47e7ed-151f-46db-86b0-4d8a73af1a7b",
    img: "https://blog.jacquesdemeter.fr/wp-content/uploads/2015/10/cuir-grain%C3%A9.jpg",
    label: "Cuir",
  },
  {
    value: "94381cbb-6460-4b4c-ad84-01b50b5070eb",
    img: "https://www.mondialtissus.fr/media/catalog/product/cache/5a7b68a13efa2fc32f1f88cc4632d82f/0/1/0120f5f98fa48cc7db66da3962126c7783d57701_225993.jpg",
    label: "Tissu",
  },  
  {
    value: "f632b0a3-6ada-40df-a93b-b337b790fb72",
    img: "https://www.kozze.fr/img/cms/cms/Polyester_4.jpg",
    label: "Synthétique",
  },
];
