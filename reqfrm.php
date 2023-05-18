<?php
require('header.php');
?>

<script type="text/javascript">
  function change() {


    if (document.form1.sample.value == 0) {
      document.getElementById("bottom").innerHTML = '\
      <div class="row mb-3">\
        <label for="inputPassword3" class="col-sm-2 col-form-label">Item</label>\
        <div class="col-sm-10">\
          <select class="form-control" name="item" placeholder="Item Name">\
          <?php
          $sql="select * from tbl_item";
          $result=select($sql);
          if(mysqli_num_rows($result)>0) {
            while($arr=mysqli_fetch_assoc($result)) {
              echo "<option value=".$arr['item_id'].">".$arr['item_name']."</option>";
            }	
          }
          ?>
          <select>\
        </div>\
      </div>\
      <div class="row mb-3">\
        <label for="inputPassword3" class="col-sm-2 col-form-label">Quantity</label>\
        <div class="col-sm-10">\
        <input type="number" min="1" class="form-control" name="quantity" placeholder="Quantity">\
        </div>\
      </div>\
      <div class="row mb-3">\
        <label for="inputPassword3" class="col-sm-2 col-form-label">Date of Requirement</label>\
        <div class="col-sm-10">\
        <input type="date" class="form-control" name="dor" placeholder="Date of requirement">\
        </div>\
      </div>';

    }


    if (document.form1.sample.value == 1) {
      document.getElementById("bottom1").innerHTML = '\
      <div class="row mb-3">\
        <label for="inputPassword3" class="col-sm-2 col-form-label">Item</label>\
        <div class="col-sm-10">\
          <select class="form-control" name="item" placeholder="Item Name">\
          <?php
          $sql="select * from tbl_item";
          $result=select($sql);
          if(mysqli_num_rows($result)>0) {
            while($arr=mysqli_fetch_assoc($result)) {
              echo "<option value=".$arr['item_id'].">".$arr['item_name']."</option>";
            }	
          }
          ?>
          <select>\
        </div>\
      </div>\
      <div class="row mb-3">\
        <label for="inputPassword3" class="col-sm-2 col-form-label">Department</label>\
        <div class="col-sm-10">\
        <select class="form-control" name="quantity" placeholder="Item Name">\
          <?php
          $sql="select * from tbl_department";
          $result=select($sql);
          if(mysqli_num_rows($result)>0) {
            while($arr=mysqli_fetch_assoc($result)) {
              echo "<option value=".$arr['dept_id'].">".$arr['department_name']."</option>";
            }	
          }
          ?>
          <select>\
        </div>\
      </div>\
      <div class="row mb-3">\
        <label for="inputPassword3" class="col-sm-2 col-form-label">Date of Requirement</label>\
        <div class="col-sm-10">\
        <input type="date" class="form-control" name="dor" placeholder="Date of requirement">\
        </div>\
      </div>';

    }

   

    if (document.form1.sample.value == 0) {
      document.getElementById("bottom").innerHTML = '\
      <div class="row mb-3">\
        <label for="inputPassword3" class="col-sm-2 col-form-label">Item</label>\
        <div class="col-sm-10">\
          <select class="form-control" name="item" placeholder="Item Name">\
          <?php
          $sql="select * from tbl_item";
          $result=select($sql);
          if(mysqli_num_rows($result)>0) {
            while($arr=mysqli_fetch_assoc($result)) {
              echo "<option value=".$arr['item_id'].">".$arr['item_name']."</option>";
            }	
          }
          ?>
          <select>\
        </div>\
      </div>\
      <div class="row mb-3">\
        <label for="inputPassword3" class="col-sm-2 col-form-label">Quantity</label>\
        <div class="col-sm-10">\
        <input type="number" min="1" class="form-control" name="quantity" placeholder="Quantity">\
        </div>\
      </div>\
      <div class="row mb-3">\
        <label for="inputPassword3" class="col-sm-2 col-form-label">Date of Requirement</label>\
        <div class="col-sm-10">\
        <input type="date" class="form-control" name="dor" placeholder="Date of requirement">\
        </div>\
      </div>';

    }


  }
</script>
<main id="main" class="main">

  <div class="pagetitle">
    <h1>Request Form</h1>
    <!-- <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Request</li>
          <li class="breadcrumb-item active">Form</li>
        </ol>
      </nav> -->
  </div><!-- End Page Title -->
  <section class="section">
    <div class="row">
      <div class="col-lg-12">

        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Request Form</h5>

            <!-- Horizontal Form -->
            <form name="form1" action="php/req.php" method="post">
          
              <div class="row mb-3">
                <label for="inputPassword3" class="col-sm-2 col-form-label">Request Name</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="inputPassword" name="req">
                </div>
              </div>

              <div class="row mb-3">
                <label for="inputPassword3" class="col-sm-2 col-form-label">Comments</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="inputPassword"  name="comm">
                </div>
              </div>

              <div class="row mb-3">
                <label for="inputPassword3" class="col-sm-2 col-form-label">Request Type</label>
                <div class="col-sm-10">
                  <select class="form-select" aria-label="Default select example" name="rtype" id="sample" onchange="change()">
                    <option disabled selected>Request type select</option>
                    <option value=0>Item Request</option>
                    <option value=1>Maintence Request</option>
                    <option value=2>Temprorary Request</option>

                  </select>
                </div>
              </div>
              <div id="bottom"></div>
              <div id="bottom1"></div>
              <div id="bottom2"></div>

              </div>

              <!-- <div class="row mb-3">

                <div class="col-sm-12" id="bottoms"></div>

              </div>

              <div class="row mb-3">
                <div class="col-sm-12" id="bottom1"></div>

              </div>
              <div class="row mb-3">

                <div class="col-sm-12" id="bottom2"></div>

              </div>
              <div class="row mb-3">

                <div class="col-sm-12" id="bottom3"></div>
              </div> -->

              <!-- <div class="row mb-3">
                  <label for="inputPassword3" class="col-sm-2 col-form-label">Complaint</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword">
                  </div>
                </div>

                <div class="row mb-3">
                  <label for="inputPassword3" class="col-sm-2 col-form-label">Quantity Details</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword">
                  </div>
                </div>

                <div class="row mb-3">
                  <label for="inputPassword3" class="col-sm-2 col-form-label">Est. Materail cost</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword">
                  </div>
                </div>
                  <div class="row mb-3">
                  <label for="inputPassword3" class="col-sm-2 col-form-label">Requirement</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputPassword3" class="col-sm-2 col-form-label">Justification</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword">
                  </div>
                </div> -->

              <!-- <fieldset class="row mb-3">
                  <legend class="col-form-label col-sm-2 pt-0">Radios</legend>
                  <div class="col-sm-10">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                      <label class="form-check-label" for="gridRadios1">
                        First radio
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                      <label class="form-check-label" for="gridRadios2">
                        Second radio
                      </label>
                    </div>
                    <div class="form-check disabled">
                      <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3" disabled>
                      <label class="form-check-label" for="gridRadios3">
                        Third disabled radio
                      </label>
                    </div>
                  </div>
                </fieldset> -->
              <div class="row mb-3">
                <div class="col-sm-10 offset-sm-2">
                  <!-- <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="gridCheck1">
                      <label class="form-check-label" for="gridCheck1">
                        Accept
                      </label>
                    </div> -->
                </div>
              </div>
              <div class="text-center">
                <button type="submit" class="btn btn-primary">Submit</button>
                <!-- <button type="reset" class="btn btn-secondary">Reset</button> -->
              </div>
            </form><!-- End Horizontal Form -->

          </div>
        </div>

        <!-- <div class="card">
            <div class="card-body">
              <h5 class="card-title">Multi Columns Form</h5> -->

        <!-- Multi Columns Form -->
        <!-- <form class="row g-3">
                <div class="col-md-12">
                  <label for="inputName5" class="form-label">Your Name</label>
                  <input type="text" class="form-control" id="inputName5">
                </div>
                <div class="col-md-6">
                  <label for="inputEmail5" class="form-label">Email</label>
                  <input type="email" class="form-control" id="inputEmail5">
                </div>
                <div class="col-md-6">
                  <label for="inputPassword5" class="form-label">Password</label>
                  <input type="password" class="form-control" id="inputPassword5">
                </div>
                <div class="col-12">
                  <label for="inputAddress5" class="form-label">Address</label>
                  <input type="text" class="form-control" id="inputAddres5s" placeholder="1234 Main St">
                </div>
                <div class="col-12">
                  <label for="inputAddress2" class="form-label">Address 2</label>
                  <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
                </div>
                <div class="col-md-6">
                  <label for="inputCity" class="form-label">City</label>
                  <input type="text" class="form-control" id="inputCity">
                </div>
                <div class="col-md-4">
                  <label for="inputState" class="form-label">State</label>
                  <select id="inputState" class="form-select">
                    <option selected>Choose...</option>
                    <option>...</option>
                  </select>
                </div>
                <div class="col-md-2">
                  <label for="inputZip" class="form-label">Zip</label>
                  <input type="text" class="form-control" id="inputZip">
                </div>
                <div class="col-12">
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="gridCheck">
                    <label class="form-check-label" for="gridCheck">
                      Check me out
                    </label>
                  </div>
                </div>
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Submit</button>
                  <button type="reset" class="btn btn-secondary">Reset</button>
                </div>
              </form> --><!-- End Multi Columns Form -->

        <!--  </div>
          </div> -->

      </div>


    </div>
  </section>

</main>
<?php
require('footer.php');
?>