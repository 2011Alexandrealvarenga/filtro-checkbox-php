<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
  <div class="container">
    <div class="row">
      <div class="col">
        <div class="card mt-3">
          <div class="card-header">
            <h4>how to filter</h4>
          </div>

        </div>
      </div>
      <div class="col">
        <form action="" method="GET">
          <div class="card-header">
            <h5>filter</h5>
            <button class="btn btn-primary">Search</button>
          </div>
          <div class="card-body">
            <h6>brand list</h6><br>
            <?php 
            $con = mysqli_connect("localhost","root","","filtro_checkbox");
            $brand_query = "SELECT * from a_brands"; 
            $brand_query_run = mysqli_query($con, $brand_query);

            if(mysqli_num_rows($brand_query_run) > 0){
              foreach($brand_query_run as $brandlist){
                $checked = [];
                if(isset($_GET['brands']))
                {
                  $checked = $_GET['brands'];
                }?>
                
                <div class="">
                  <input type="checkbox" name="brands[]" value="<?= $brandlist['id'] ;?>" <?php if(in_array($brandlist['id'], $checked)){echo "checked";} ?>>
                  <?= $brandlist['name'] ;?>
                </div>
                <?php 
              }
            }
            else
            {
              echo 'nao foi encontrado';
            }
            ;?>
          </div>

        </form>
      </div>
      <div class="col-9">
        <div class="card">
          <div class="card-body row">
            <?php 
              if(isset($_GET['brands']))
              {
                $branchecked = [];
                $branchecked = $_GET['brands'];
                foreach($branchecked as $rowbrand)
                {
                  $products = "SELECT * FROM a_products WHERE brand_id IN ($rowbrand)";
                  $products_run = mysqli_query($con, $products);
                  if(mysqli_num_rows($products_run) > 0)
                  {
                    foreach($products_run as $proditems):
                      ?>
                        <div class="col-4">
                          <div class="border">
                            <h6><?= $proditems['name'];?></h6>
                          </div>
                        </div>
                      <?php 
                    endforeach;
                  }
                }
              }
              else
              {
                $products = "SELECT * FROM a_products";
                $products_run = mysqli_query($con, $products);
                if(mysqli_num_rows($products_run)> 0)
                {
                  foreach($products_run as $proditems):
                    ?>
                      <div class="col-4">
                          <div class="border">
                            <h6><?= $proditems['name'];?></h6>
                          </div>
                        </div>
                    <?php 
                    endforeach;
                }
                else
                {
                  echo 'nao foram encontrados resultados';
                }
              }
            ;?>
          </div>
        </div>
      </div>
    </div>
  </div>

<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>