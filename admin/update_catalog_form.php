<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
  <div class="ui container grid">
    <div class="row">
      <div class="fifteen wide computer sixteen wide phone centered column center-table">
        <div class="ui divider"></div>
        <div class="ui grid">
          <div class="sixteen wide computer sixteen wide phone centered column">
            <!-- BEGIN DATATABLE -->
            <div class="ui stacked segment">
              <div class="ui blue ribbon icon label">Update Catalog Information</div>
              <br><br>
              <?php
              // echo var_dump($result);
              ?>
              <form action="admin.php?act=updateform_catalog" method="POST">
                <input style="width=100% color: red;" type="text" name="catalog_name" id=""
                  value="<?=$result[0]['catalog_name']?>">
                <input type="hidden" name="id" value="<?=$result[0]['id_catalog_k']?>">
                <input type="submit" name="catalog_update" value="Update">
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
$(document).ready(function() {

  $(document).ready(function() {
    $('#example').DataTable();
  });
  table.buttons().container().appendTo(
    $('div.eight.column:eq(0)', table.table().container())
  );
});
</script>

</html>