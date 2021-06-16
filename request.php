    <div class="wait overlay">
        <div class="loader"></div>
    </div>
    <style>
    .input-borders{
        border-radius:30px;
    }
    </style>
<?php 
    include "db.php"; 
$idx = 1;

    if(isset($_POST['submit'])){
        
        $uploadsDir = "upload/";
        $allowedFileType = array('jpg','png','jpeg');
        
        // Velidate if files exist
        if (!empty(array_filter($_FILES['fileUpload']['name']))) {
            
            // Loop through file items
            foreach($_FILES['fileUpload']['name'] as $id=>$val){
                // Get files upload path
                $fileName        = $_FILES['fileUpload']['name'][$id];
                $tempLocation    = $_FILES['fileUpload']['tmp_name'][$id];
                $targetFilePath  = $uploadsDir . $fileName;
                $fileType        = strtolower(pathinfo($targetFilePath, PATHINFO_EXTENSION));
                $uploadDate      = date('Y-m-d H:i:s');
                $uploadOk = 1;

                if(in_array($fileType, $allowedFileType)){
                        if(move_uploaded_file($tempLocation, $targetFilePath)){
                            $sqlVal = "('".$idx.",".$fileName."')";
                        }
                    
                } else {
                    $response = array(
                        "status" => "alert-danger",
                        "message" => "Only .jpg, .jpeg and .png file formats allowed."
                    );
                }
                // Add into MySQL database
                if(!empty($sqlVal)) {
                    $userid = $_SESSION["uid"];
                    $prdname = $_POST["prdname"];
	                $prddesc = $_POST["prddesc"];
                $sql = "INSERT INTO  `request`  (`user_id`,`prd_name`,`prd_img`,`prd_desc`) VALUES ('$userid','$prdname','$fileName','$prddesc')";
                    $insert = mysqli_query($con,$sql);
                    if($insert) {
                        $idx++;
                        $response = array(
                            "status" => "alert-success",
                            "message" => "Files successfully uploaded."
                        );
                    }
                }
            
            }
        } 
        echo "<script> location.href='requestfile.php'; </script>";
    }


?>
 <style>
    .imgGallery img {
      padding: 8px;
      max-width: 100px;
    }    
     input[type="file"]{
         padding-top: 8px;
     }
  </style>
<div class="container-fluid">
    <form action="" method="post" enctype="multipart/form-data" class="mb-3">
        <div class="billing-details jumbotron">
            
          <div class="user-image mb-3 text-center">
            <div class="imgGallery"> 
              <!-- Image preview -->
            </div>
          </div>
            <div class="form-group">
                <input class="input form-control input-borders" type="text" name="prdname"  placeholder="Product name" required>
            </div>
            <div class="form-group">
                <input class="input form-control input-borders" type="text" name="prddesc"  placeholder="Product description" required>
            </div>
          <div class="form-group">
            <input type="file" name="fileUpload[]" class="input form-control input-borders" id="chooseFile" required>
            </div>
            
            <style>
            input[type=file]::file-selector-button {
  border: 2px solid red;
  padding: 1px 8px;
  border-radius: 10px;
  background-color: lightcoral;
  transition: 1s;
}
            
            </style>
            
          <button type="submit" name="submit" class="btn btn-primary btn-block mt-4">
            Send request
          </button>
        </div>
    </form>
  </div>


  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

  <script>
    $(function() {
    // Multiple images preview with JavaScript
    var multiImgPreview = function(input, imgPreviewPlaceholder) {

        if (input.files) {
            var filesAmount = input.files.length;

            for (i = 0; i < filesAmount; i++) {
                var reader = new FileReader();

                reader.onload = function(event) {
                    $($.parseHTML('<img>')).attr('src', event.target.result).appendTo(imgPreviewPlaceholder);
                }

                reader.readAsDataURL(input.files[i]);
            }
        }

    };

      $('#chooseFile').on('change', function() {
        multiImgPreview(this, 'div.imgGallery');
      });
    });    
  </script>

 