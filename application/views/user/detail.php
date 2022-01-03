<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="<?php echo base_url();?>assets_style/assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="<?php echo base_url();?>assets_style/assets/bower_components/font-awesome/css/font-awesome.min.css">
		<title><?= $title_web;?></title>
		<style>
			body {
				background: rgba(0,0,0,0.2);
			}
			page[size="A4"] {
				background: white;
				width: 21cm;
				height: 29.7cm;
				display: block;
				margin: 0 auto;
				margin-bottom: 0.5pc;
				box-shadow: 0 0 0.5cm rgba(0,0,0,0.5);
				padding-left:2.54cm;
				padding-right:2.54cm;
				padding-top:1.54cm;
				padding-bottom:1.54cm;
			}
			@media print {
				body, page[size="A4"] {
					margin: 0;
					box-shadow: 0;
				}
			}
		</style>
	</head>
	<body>
        <div class="container">
            <br/> 
            <div class="pull-left">
                Preview Kartu Anggota
            </div>
            <div class="pull-right"> 
            <button type="button" class="btn btn-success btn-md" onclick="printDiv('printableArea')">
                <i class="fa fa-print"> </i> Print File
            </button>
            </div>
        </div>
        <br/>
        <div id="printableArea">
            <page size="A4">
				<div class="panel panel-default">
					<div class="panel-body bg-primary">
						<h4 class="text-center">KARTU ANGGOTA PERPUSTAKAAN</h4>
						<br/>
						<div class="row">
							<div class="col-sm-8">
								<table class="table table-stripped">
									<tr>
										<td>ID</td>
										<td>:</td>
										<td><?= $user->anggota_id;?></td>
									</tr>
									<tr>
										<td>Nama</td>
										<td>:</td>
										<td><?= $user->nama;?></td>
									</tr>
									<tr>
										<td>TTL</td>
										<td>:</td>
										<td><?= $user->tempat_lahir;?>, <?= $user->tgl_lahir?\DateTime::createFromFormat('Y-m-d', $user->tgl_lahir)->format('d F Y'):''; ?></td>
									</tr>
									<tr>
										<td>Alamat</td>
										<td>:</td>
										<td><?= $user->alamat;?></td>
									</tr>
									<tr>
										<td>Tgl Bergabung</td>
										<td>:</td>
										<td><?= $user->tgl_bergabung?\DateTime::createFromFormat('Y-m-d', $user->tgl_bergabung)->format('d F Y'):''; ?></td>
									</tr>
								</table>
							</div>
							<div class="col-sm-4 text-center">
								<center>
									<img src="<?php echo base_url();?>assets_style/image/<?php echo $user->foto;?>" style="width:3cm;height:4cm;" class="img-responsive">
								</center>
							</div>
						</div>
					</div>
				</div>
            </page>
        </div>
  </body>
  <script>
    function printDiv(divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var originalContents = document.body.innerHTML;
        document.body.innerHTML = printContents;
        window.print();
        document.body.innerHTML = originalContents;
    }
  </script>
</html>
