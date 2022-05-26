<?php 
  // Headers
  header('Access-Control-Allow-Origin: *');
  header('Content-Type: application/json');
  header('Access-Control-Allow-Methods: PUT');
  header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authorization, X-Requested-With');

  include_once '../../config/database_sepatu.php';
  include_once '../../moduls/produk_sepatu.php';

  // Instantiate DB & connect
  $database = new database_sepatu();
  $db = $database->connect();

  // Instantiate blog post object
  $post = new Post($db);

  // Get raw posted data
  $data = json_decode(file_get_contents("php://input"));

  // Set ID to update
  $post->id_sepatu = $data->id_sepatu;
  $post->nama_sepatu = $data->nama_sepatu;
  $post->ukuran_sepatu = $data->ukuran_sepatu;
  $post->harga_sepatu = $data->harga_sepatu;

  // Update post
  if($post->update()) {
    echo json_encode(
      array('message' => 'Post Updated')
    );
  } else {
    echo json_encode(
      array('message' => 'Post Not Updated')
    );
  }