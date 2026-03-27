Nama: Nashwa Ghania<br/>
NPM: 2306241770

<details>
<summary>Tutorial 4</summary>

Pada latihan mandiri ini saya membuat level baru yang berbeda dari level pertama dengan menggunakan tile map yang berbeda sehingga tampilan lingkungan permainan berubah. Selain itu saya juga menambahkan background menggunakan Parallax2D agar latar belakang tetap stabil ketika kamera mengikuti pergerakan Player.

Pada level ini rintangan yang sebelumnya berupa ikan diganti menjadi objek tikus. Level juga tetap memiliki jurang serta objek yang jatuh secara periodik sebagai rintangan yang harus dihindari oleh Player. Jika Player bertabrakan dengan rintangan maka permainan akan berakhir.

Saya juga menambahkan fitur double jump pada Player sehingga Player dapat melakukan dua kali lompatan sebelum kembali menyentuh tanah. Fitur ini membantu Player untuk melewati rintangan yang ada di level.

Referensi yang digunakan berasal dari dokumentasi resmi Godot Engine mengenai TileMap, Parallax2D, dan CharacterBody2D serta tutorial yang telah diberikan sebelumnya.

</details>

<details>
<summary>Tutorial 6</summary>

Pada latihan mandiri ini dilakukan refactor struktur project dengan memindahkan seluruh file script ke dalam folder script agar lebih terorganisir dan mudah dikelola. Selain itu, dibuat sistem global menggunakan autoload (Global.gd) untuk menyimpan state penting seperti jumlah nyawa (lives), serta ditambahkan fungsi reset() untuk mengembalikan kondisi awal permainan saat memulai game baru.

Beberapa implementasi yang dilakukan:

1. Refactor struktur folder script agar lebih rapi
2. Pembuatan sistem global (autoload) untuk manajemen state game
3. Penambahan fungsi reset untuk memulai ulang permainan
4. Penambahan fitur Select Stage dengan scene khusus berisi pilihan level (Level 1, Level 2, dan Back)
5. Perbaikan sistem spawn obstacle akibat error PackedScene bernilai null

Selanjutnya, diimplementasikan script tombol yang bersifat reusable menggunakan LinkButton sehingga dapat digunakan untuk berbagai navigasi antar scene seperti New Game, Select Stage, dan kembali ke menu utama hanya dengan mengatur path scene melalui Inspector. Selain itu, dilakukan perbaikan pada sistem spawn obstacle yang sebelumnya mengalami error akibat variabel PackedScene bernilai null. Masalah ini diselesaikan dengan memastikan referensi scene diisi melalui Inspector atau menggunakan preload.

Referensi yang digunakan dalam pengembangan ini antara lain dokumentasi resmi Godot Engine, khususnya bagian terkait nodes dan scene, autoload (singleton), serta sistem signal.

</details>
