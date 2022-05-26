<?php
class Post{
    //DB Stuff
    private $conn;
    private $table = 'produk_sepatu';

    //Post Properties
    public $id_sepatu;
    public $nama_sepatu;
    public $ukuran_sepatu;
    public $harga_sepatu;

    // Constructor with DB
    public function __construct($db){
        $this->conn = $db;
    }

    //Get Posts
    public function read() {
        // Create query
      $query = 'SELECT * FROM ' . $this->table . ' ORDER BY id_sepatu';
      
      // Prepare statement
      $stmt = $this->conn->prepare($query);

      // Execute query
      $stmt->execute();

      return $stmt;
      }

    // Get Single Post
    public function read_single(){
        // Create query
        $query = 'SELECT * FROM ' . $this->table . ' WHERE id_sepatu = ?';

        // Prepare statement
        $stmt = $this->conn->prepare($query);

        // Bind ID
        $stmt->bindParam(1, $this->id_sepatu);

        // Execute query
        $stmt->execute();

        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        //Set Properties
        $this->id_sepatu = $row['id_sepatu'];
        $this->nama_sepatu = $row['nama_sepatu'];
        $this->ukuran_sepatu = $row['ukuran_sepatu'];
        $this->harga_sepatu = $row['harga_sepatu'];
    }
    // Insert Data
    public function create() {
        // Create query
        $query = 'INSERT INTO ' . $this->table . ' SET nama_sepatu = :nama_sepatu, ukuran_sepatu = :ukuran_sepatu, harga_sepatu = :harga_sepatu';

        // Prepare statement
        $stmt = $this->conn->prepare($query);

        // Clean data
        $this->nama_sepatu = htmlspecialchars(strip_tags($this->nama_sepatu));
        $this->ukuran_sepatu = htmlspecialchars(strip_tags($this->ukuran_sepatu));
        $this->harga_sepatu = htmlspecialchars(strip_tags($this->harga_sepatu));

        // Bind data
        $stmt->bindParam(':nama_sepatu', $this->nama_sepatu);
        $stmt->bindParam(':ukuran_sepatu', $this->ukuran_sepatu);
        $stmt->bindParam(':harga_sepatu', $this->harga_sepatu);

        // Execute query
        if($stmt->execute()) {
          return true;
    }

    // Print error if something goes wrong
    printf("Error: %s.\n", $stmt->error);

    return false;
  }

    // Update Data
    public function update() {
        // Create query
        $query = 'UPDATE ' . $this->table . 
        ' SET nama_sepatu = :nama_sepatu, ukuran_sepatu = :ukuran_sepatu, harga_sepatu = :harga_sepatu
        WHERE id_sepatu = :id_sepatu';

        // Prepare statement
        $stmt = $this->conn->prepare($query);

        // Clean data
        $this->id_sepatu = htmlspecialchars(strip_tags($this->id_sepatu));
        $this->nama_sepatu = htmlspecialchars(strip_tags($this->nama_sepatu));
        $this->ukuran_sepatu = htmlspecialchars(strip_tags($this->ukuran_sepatu));
        $this->harga_sepatu = htmlspecialchars(strip_tags($this->harga_sepatu));
        

        // Bind data
        $stmt->bindParam(':id_sepatu', $this->id_sepatu);
        $stmt->bindParam(':nama_sepatu', $this->nama_sepatu);
        $stmt->bindParam(':ukuran_sepatu', $this->ukuran_sepatu);
        $stmt->bindParam(':harga_sepatu', $this->harga_sepatu);

        // Execute query
        if($stmt->execute()) {
          return true;
        }

        // Print error if something goes wrong
        printf("Error: %s.\n", $stmt->error);

        return false;
  }
    // Delete Data
    public function delete() {
        // Create query
        $query = 'DELETE FROM ' . $this->table . ' WHERE id_sepatu = :id_sepatu';

        // Prepare statement
        $stmt = $this->conn->prepare($query);

        // Clean data
        $this->id_sepatu = htmlspecialchars(strip_tags($this->id_sepatu));

        // Bind data
        $stmt->bindParam(':id_sepatu', $this->id_sepatu);

        // Execute query
        if($stmt->execute()) {
          return true;
        }

        // Print error if something goes wrong
        printf("Error: %s.\n", $stmt->error);

        return false;
  }
}