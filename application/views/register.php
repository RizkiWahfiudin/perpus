<div class="login-box">
	<br/>
  <div class="login-box-body text-center bg-white" style="border:2px solid #226bbf;">
    <h3 style="color: blue;">Website Peminjaman Buku Perpustakaan</h3>
  </div>
  <div id="tampilalert"></div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg" style="font-size:16px;"></p>
    <form action="<?= base_url('register/store');?>" method="POST">
      <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="Nama" id="nama" name="nama" required="required" autocomplete="off">
        <span class="glyphicon glyphicon-eye-open form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="Username" id="user" name="user" required="required" autocomplete="off">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Password" id="pass" name="pass" required="required" autocomplete="off">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <a href="<?= base_url(); ?>"><h6>Login!</h6></a>
        </div>
        <div class="col-xs-4">
          <button type="submit" id="loding" class="btn btn-primary btn-block btn-flat">Register</button>
          <div id="loadingcuy"></div>
        </div>
        <!-- /.col -->
      </div>
    </form>
  </div>
  <!-- /.login-box-body -->
  <br/>
  <footer>
    <div class="login-box-body text-center bg-green">
       <a style="color: white;"> Kelompok 5 Web - <?php echo date("Y");?>
    </div>
  </footer>
</div>