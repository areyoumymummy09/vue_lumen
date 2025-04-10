# Taylor Swift Discography Explorer

A responsive web application that demonstrates the integration of a Vue.js frontend with a custom Lumen API backend to explore Taylor Swift's album collection.

## Project Overview

This project showcases a single-page Vue.js application that connects to a Lumen API to fetch and display Taylor Swift's discography. The application allows users to view a sorted listing of her albums and click on individual albums to see detailed information in an elegant lightbox popup without page navigation.

## Features

- **Vue.js Frontend**: Built with vanilla Vue.js (no .vue single file components) for a lightweight and efficient user interface
- **Custom Lumen API**: Self-developed API with endpoints for listing Taylor Swift albums and retrieving individual album details
- **Responsive Design**: Fully responsive layout that works seamlessly across mobile, tablet, and desktop devices
- **Lightbox Feature**: Custom lightbox popup that displays detailed album information when a user clicks on an album
- **Dynamic Content Loading**: Asynchronous data fetching with loading indicators and proper error handling
- **Interactive UI**: Click-to-view functionality with smooth transitions between album list and detailed view
- **GSAP Animations**: Enhanced user experience with GreenSock animations for album cards and lightbox interactions

## Technical Implementation

- Single HTML file structure with Vue.js instance
- AJAX requests to connect frontend with backend API
- Custom lightbox component created with Vue.js
- Event-driven architecture for album selection and lightbox interactions
- Mobile-first responsive design approach for album gallery
- Error handling for network issues and API failures
- GSAP animations for smooth transitions and engaging user experience

## Getting Started

1. Clone this repository
2. Set up the Lumen API (instructions in the API folder)
3. Open `index.html` in your browser or set up a local server


## Contributors

Lai Yi Ting Elaine

## License

This project is part of a web development course assignment.