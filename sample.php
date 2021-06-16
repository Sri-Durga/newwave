<?php
include 'db.php';
$sql = " SELECT count(*) cnt FROM request";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
$cnt = $row["cnt"];
$product_id = 0;
echo "<br>";

while($product_id <$cnt){
    $product_id++;
    echo "
    <div class='section main main-raised'>
            <div class='container'>
        <div class='row'>
    ";
        
    $sql = " SELECT * FROM request WHERE id = $product_id";
    $result = mysqli_query($con, $sql);
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            $image = $row['prd_img'];
            $desc = str_replace("\n","<br>",$row['prd_desc']);
            $desc = substr_replace( $desc, "\n", 100, 0 );
            echo '
                <div class="col-md-3" id="temp">
                    <style>
                        #temp{
                            padding-top: 10px;
                            padding-left: 30px;
                        }
                    </style>
                    <div id="product-main-img">
                        <div class="product-preview">
                            <img src="product_images/'.$image.'" alt="New York" style="width:300px; height:300px">
                        </div>                                     
                    </div>  
                </div>  
                <div class="col-md-5"></div>
                <div class="col-md-9">
                    <div class="product-details">
                        <h2 class="product-name">'.$row['prd_name'].'</h2>
                        <p>'.$desc.'</p>
                        <ul class="product-btns">
                            <li><a href="#"><i class="fa fa-heart-o"></i> add to wishlist</a></li>
                        </ul>
                        <ul class="product-links">
                            <li>Share:</li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i></a></li>
                        </ul>
                    </div>
                </div>
                
     </div></div></div>
     
     
        <br>';
            
            
} 
 }
} 
?>