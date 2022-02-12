const defaultTheme = require('tailwindcss/defaultTheme')
const colors = require("tailwindcss/colors")

module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Poly Sans', ...defaultTheme.fontFamily.sans],
        display: ['Neue Bit', ...defaultTheme.fontFamily.sans]
      }
    },
    colors: {
      transparent: 'transparent',
      current: 'currentColor',
      white: colors.white,
      black: colors.black,
      gray: colors.gray,
      'jonquil': '#f9c80eff',
      'banana': '#ffecc2ff',
      'orange': '#f86624ff',
      'silk': '#fdd6c4ff',
      'red': '#ea3546ff',
      'pink': '#fbdadeff',
      'purple': '#662e9bff',
      'lavender': '#e1d0f1ff',
      'skyblue': '#2dd8eeff',
      'blizzardblue': '#E8F9FF',
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
