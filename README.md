## Tutorial 2
_Apa saja pesan log yang dicetak pada panel Output?_
> Platform initialized

_Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?_
> Reached objective!

_Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?_
> Iya, karena ObjectiveArea memiliki script untuk memanggil fungsi print apabila terdapat object pesawat yang menyentuhnya.

_Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?_
> Untuk menampilkan aset/sprite pada object sebagai visual.

_Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?_
> RigidBody2D dapat dipengaruhi oleh objek lain secara physics, misalnya bergerak, atau terhempas, sementara StaticBody2D bersifat statis dan tidak dipengaruhi oleh objek physic lain, tetapi tetap memiliki collision.

_Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?_
> Pesawat memiliki efek berat yang berbeda saat diubah atribut Mass, karena atribut Mass menggambarkan massa objek pada game.

_Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?_
> Pesawat terjun bebas, karena atribut collision dimatikan, sehingga ia tidak menangkap  efek tabrakan dengan objek lain.

_Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?_
> Keseluruhan objek BlueShip termanipulasi oleh atribut tsb, maka ia bisa berpindah posisi, berputar, dan berubah skala atau ukuran.

_Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?_
> Karena nilai atribut position pada stone platform merupakan nilai position lokal, dimana nilai lokal merupakan nilai relatif terhadap node parent, sehingga nilai yang ada disitu hanya menggambarkan posisinya dari parent node yaitu PlatformBlue, bukan nilai global atau nilai asli di layar.
