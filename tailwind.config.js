const formKitTailwind = require("@formkit/themes/tailwindcss");

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: {
    extend: {
      fontFamily: {
        "made-okine-sans-personal-use": "MADE Okine Sans PERSONAL USE",
        audrey: "Audrey",
      },
      colors: {
        blue: "#010131",
        black: "#000000",
        white: "#ffffff",
        gray: "#6b6b6b",
        light_grey: "#f0f0f0",
      },
      fontSize: {
        xs: "1.125rem",
        sm: "1.25rem",
        base: "1.375rem",
        lg: "1.875rem",
        xl: "2.1875rem",
        "2xl": "2.8125rem",
        "3xl": "3.4375rem",
      },
      borderRadius: {
        none: "0",
        xs: "0.3125rem",
        sm: "1.5625rem",
        default: "1.875rem",
        lg: "2.1875rem",
        xl: "2.8271484375rem",
        "2xl": "5.0888671875rem",
        full: "9999px",
      },
    },
  },
  plugins: [
    require("@tailwindcss/typography"),
    require("@tailwindcss/forms"),
    formKitTailwind,
    require("@headlessui/tailwindcss"),
  ],
};
