const app = Vue.createApp({
    created() {
      fetch('http://localhost:8888/vue_lumen/public/index.php/albums')
        .then(response => response.json())
        .then(data => {
            // console.log(data)
          this.albumsData = data;
          this.loadingAlbums = false;
        })
        .catch(error => console.error(error));
    },
    data() {
      return {
        albumsData: [],
        name: "",
        poster: "",
        short_description: "",
        concert_image: "",
        error: "",
        loadingAlbums: true,
        loading: false
      }
    },
    methods: {
        getAlbum(id) {
          this.loading = true;
          this.error = "";
          this.album_name = "";
          this.short_description = "";
          this.concert_image = "";
      
          // Make one joined request from album_intro controller
          fetch(`http://localhost:8888/vue_lumen/public/index.php/album_intro/${id}`)
  .then(response => response.json())
  .then(data => {
    this.loading = false;

    if (data) {
      this.album_name = data.album_name ?? 'Unknown Album';
      this.short_description = data.short_description ?? 'Not available';
      this.concert_image = data.concert_image ?? 'default.jpg';
      this.error = ""; // Clear any previous error
    } else {
      this.error = "No album intro data found.";
    }
  })
  .catch(error => {
    console.error(error);
    this.loading = false;
    this.error = "Failed to load album data.";
  });
}}
});

app.mount("#app");
