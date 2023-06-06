<!-- BEGIN SIDEBAR -->
<!-- mobile and tablet only sidebar -->
<!-- <div class="tablet mobile only row">
  <div id="mobiletabletsidebar" class="mobiletabletsidebar animate hidden">
    <div class="ui left fixed vertical menu scrollable">
      <div class="item">
        <table>
          <tr>
            <td>
              <img class="ui mini image" src="images/logo.png">
            </td>
            <td>
              <span class="clear"><strong>SIMPLE UI</strong></span>
            </td>
          </tr>
        </table>
      </div>
      <a class="item" href="index.html"><i class="home icon"></i> Dashboard</a>
      <a class="item" href="table.html"><i class="table icon"></i> Table</a> -->
<!-- Begin Simple Accordion -->
<!-- <div class=" ui accordion simpleaccordion item">
        <div class="title titleaccordion item"><i class="dropdown icon"></i> Settings</div>
        <div class="content contentaccordion">
          <a class="item itemaccordion" href="#"><i class="settings icon"></i> Account Setting</a>
          <a class="item itemaccordion" href="#"><i class="settings icon"></i> Site Setting</a>
        </div>
      </div> -->
<!-- End Simple Accordion -->
<!-- <a class="item"><i class="settings icon"></i> Settings</a>
      <a href="#" class="item"><i class="sign out alternate icon"></i> Logout</a>
      <div class="item" id="hidemobiletabletsidebar">
        <button class="fluid ui button">
          Close
        </button>
      </div>
    </div>
  </div>
</div> -->
<!-- end mobile and tablet only sidebar -->
<!-- computer only sidebar -->
<div class="computer only row">
  <div class="left floated three wide computer column" id="computersidebar">
    <div class="ui vertical fluid menu scrollable" id="simplefluid">
      <div class="clearsidebar"></div>
      <div class="item">
        <img src="images/user.png" id="sidebar-image">
      </div>
      <a class="item" href="admin.php?act=client"><i class="home icon"></i> Dashboard</a>
      <!-- <a class="item" href="table.html"><i class="table icon"></i> Table</a> -->
      <!-- Function -->
      <div class=" ui accordion simpleaccordion item">
        <div class="title titleaccordion item"><i class="dropdown icon"></i>Statistic</div>
        <div class="content contentaccordion">
          <a class="item itemaccordion" href="admin.php?act=statistic"><i class="calculator icon"></i>Statistic</a>
          <a class="item itemaccordion" href="admin.php?act=client"><i class="user shield icon"></i>Client</a>
          <a class="item itemaccordion" href="admin.php?act=supplier"><i class="people carry icon"></i>Supplier</a>
          <a class="item itemaccordion" href="admin.php?act=invoice"><i class="file invoice icon"></i>Invoice</a>
          <a class="item itemaccordion" href="admin.php?act=catalog"><i class="list ul icon"></i>Catalog</a>
          <a class="item itemaccordion" href="admin.php?act=product"><i class="shopping basket icon"></i>Product</a>
          <!-- <a class="item itemaccordion" href="admin.php?act=insert_data"><i class="database icon"></i>Insert Data</a> -->
        </div>
      </div>
      <!-- Begin Simple Accordion -->
      <div class="ui accordion simpleaccordion item">
        <div class="title titleaccordion item"><i class="dropdown icon"></i> Settings</div>
        <div class="content contentaccordion">
          <a class="item itemaccordion" href="admin.php?act=Account_Setting"><i class=" settings icon"></i>
            Account
            Setting</a>
          <a class="item itemaccordion" href="#"><i class="settings icon"></i> Site Setting</a>
        </div>
      </div>
      <!-- End Simple Accordion -->
      <a href="admin.php?act=logout" class="item"><i class="sign out alternate icon"></i> Logout</a>
      <a class="item"></a>
    </div>
  </div>
</div>
<!-- end computer only sidebar -->
<!-- END SIDEBAR -->
</div>
</div>

<!-- inject:js -->
<script src="vendors/jquery/jquery.min.js"></script>
<script src="vendors/fomantic-ui/semantic.min.js"></script>
<script src="js/main.js"></script>
<!-- endinject -->
<!-- chartjs:js -->
<script src="vendors/chart.js/Chart.min.js"></script>
<script src="vendors/chart.js/Chart.utils.js"></script>
<script src="vendors/chart.js/Chart.example.js"></script>
<!-- endinject -->