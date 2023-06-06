<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
  <div class="ui container grid">
    <div class="row">
      <div class="fifteen wide computer sixteen wide phone centered column center-table">
        <div class="ui divider"></div>
        <div class="ui grid">
          <div class="sixteen wide computer sixteen wide phone centered column">
            <!-- BEGIN DATATABLE -->
            <div class="ui stacked segment">
              <div class="ui blue ribbon icon label">Update Invoice Information</div>
              <br><br>
              <?php
              // echo var_dump($result);
              ?>
              <form action="admin.php?act=updateform_invoice" method="POST" enctype="multipart/form-data">
                    <label>Invoice Code</label>
                    <input type="text" name="id_invoice" value="<?=$result[0]['invoice_id']?>" placeholder="Name of Product">
                    <select name="status" id="">
                      <option value="Pending">Choose Status</option>
                      <?php
                        if($result[0]['status']=="Pending")
                        {
                            echo '<option value="Pending" selected>Pending</option>';
                            echo '<option value="Cancel" >Cancel</option>';
                            echo '<option value="Ordered" >Ordered</option>';
                        } 
                        elseif($result[0]['status']=="Cancel")
                        {
                            echo '<option value="Cancel" selected>Cancel</option>';
                            echo '<option value="Pending">Pending</option>';
                            echo '<option value="Ordered">Ordered</option>';
                        }
                        elseif($result[0]['status']=="Ordered")
                        {
                            echo '<option value="Ordered"  selected>Ordered</option>';
                            echo '<option value="Pending">Pending</option>';
                            echo '<option value="Cancel">Cancel</option>';
                        } 
                      ?>
                    </select>
                    <select name="idee" id="">
                      <option value=0 selected>Choose Employee Entry</option>
                      <?php
                        if(isset($dmee))
                        {
                          foreach($dmee as $us)
                          {
                              echo '<option value="'.$us['id'].'">'.$us['name_us'].'</option>';
                          }
                        }
                      ?>
                    </select>
                    <br>
                    <input type="hidden" name="id" value="<?=$result[0]['id']?>">
                    <input type="submit" name="submit" value="Update"></input>
              </form>
            </div>
            <!-- END DATATABLE -->
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- END CONTENT -->
</div>
</body>
<!-- inject:js -->
<script src=" vendors/jquery/jquery.min.js">
</script>
<script src="vendors/fomantic-ui/semantic.min.js"></script>
<script src="js/main.js"></script>
<!-- endinject -->
<!-- datatables:js -->
<script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="vendors/datatables.net/datatables.net-se/js/dataTables.semanticui.min.js"></script>
<script src="vendors/datatables.net/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="vendors/datatables.net/datatables.net-responsive-se/js/responsive.semanticui.min.js"></script>
<script src="vendors/datatables.net/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="vendors/datatables.net/datatables.net-buttons/js/buttons.colVis.min.js"></script>
<script src="vendors/datatables.net/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="vendors/datatables.net/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="vendors/datatables.net/datatables.net-buttons-se/js/buttons.semanticui.min.js"></script>
<script src="vendors/jszip/jszip.min.js"></script>
<script src="vendors/pdfmake/pdfmake.min.js"></script>
<script src="vendors/pdfmake/vfs_fonts.js"></script>
<!-- endinject -->

<script>
// $(document).ready(function() {

//   $(document).ready(function() {
//     $('#example').DataTable();
//   });
//   table.buttons().container().appendTo(
//     $('div.eight.column:eq(0)', table.table().container())
//   );
// });
</script>

</html>