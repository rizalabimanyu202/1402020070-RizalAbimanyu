<?php 
  // Headers
  header('Access-Control-Allow-Origin: *');
  header('Content-Type: application/json');

  include_once '../../config/database_sepatu.php';
  include_once '../../moduls/produk_sepatu.php';

  // Instantiate DB & connect
  $database = new database_sepatu();
  $db = $database->connect();

  // Instantiate blog post object
  $post = new Post($db);

  // Get ID
  $post->id_sepatu = isset($_GET['id_sepatu']) ? $_GET['id_sepatu'] : die();

  // Get post
  $post->read_single();

  // Create array
  $post_arr = array(
    'id_sepatu' => $post->id_sepatu,
    'nama_sepatu' => $post->nama_sepatu,
    'ukuran_sepatu' => $post->ukuran_sepatu,
    'harga_sepatu' => $post->harga_sepatu

  );

  // Make JSON
  print_r(json_encode($post_arr));