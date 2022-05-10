module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],

  theme: {
    extend: {
      colors: {
        primary: "var(--color-primary)",
      },
      fontFamily: {
        mono: ["Nova Mono", "monospace"],
        sans: ["Inter", "sans-serif"],
      },
    },
  },
};
