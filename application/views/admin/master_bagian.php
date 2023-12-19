
<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1><i class="fas fa-database"></i> Master Bagian</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#"><i class="fas fa-tachometer-alt"></i> Beranda</a></li>
          <li class="breadcrumb-item active"><i class="fas fa-database"></i> Master Bagian</li>
        </ol>
      </div>
    </div>
  </div><!-- /.container-fluid -->
</section>
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-header">
            <h3 class="card-title"><i class="fas fa-database"></i> Master Bagian</h3>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-md-6">
                <div class="pull-left">
                  <button class="btn btn-success btn-flat" type="button" data-toggle="collapse" data-target="#add_acc" id="btn_add_collapse"><i class="fa fa-plus"></i> Tambah Data</button>
                </div>
              </div>
              <div class="col-md-6">
                <div class="pull-right" style="font-size: 8pt; text-align: right;">
                  <i class="fa fa-toggle-on stat scc"></i> Aktif &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
                  <i class="fa fa-toggle-off stat err"></i> Tidak Aktif
                </div>
              </div>
            </div>
            <div class="collapse" id="add_acc">
              <form id="form_add" class="box-border">
                <br>
                <div class="row">
                  <div class="col-md-2"></div>
                  <div class="col-md-8">
                    <div class="form-group">
                      <label>Kode Bagian</label>
                      <input type="text" placeholder="Masukkan Kode Bagian" name="kode" id="data_kode_add" class="form-control" value="<?php echo $this->codegenerator->kodeBagian(); ?>" required="required" readonly="readonly">
                    </div>
                    <div class="form-group">
                      <label>Nama Bagian</label>
                      <input type="text" placeholder="Masukkan Nama Bagian" name="nama" id="data_name_add" class="form-control" required="required">
                    </div>
                    <div class="form-group">
                      <label>Keterangan</label>
                      <textarea name="keterangan" class="form-control" placeholder="Keterangan"></textarea>
                    </div>
                  </div>
                </div>
                <br>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <button type="button" onclick="do_add()" id="btn_add" class="btn btn-success pull-right"><i class="fa fa-floppy-o"></i> Simpan</button>
                    </div>
                  </div>
                </div>
                <hr>
              </form>
            </div>
            <table id="table_data" class="table table-bordered table-striped" style="width:100%;">
              <thead>
              <tr>
                <th>No</th>
                <th>Kode</th>
                <th>Nama</th>
                <th>Keterangan</th>
                <th>Tanggal</th>
                <th>Status</th>
                <th>Aksi</th>
              </tr>
              </thead>
              <tbody>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
<div id="modal_view" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h2 class="modal-title">Detail Data <b class="text-muted header_data"></b></h2>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <input type="hidden" name="data_id_view">
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-6">
            <div class="form-group row">
              <label class="col-md-6 control-label">Kode Bagian</label>
              <div class="col-md-6" id="data_kode_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Nama Bagian</label>
              <div class="col-md-6" id="data_name_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Keterangan</label>
              <div class="col-md-6" id="data_keterangan_view"></div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group row">
              <label class="col-md-6 control-label">Status</label>
              <div class="col-md-6" id="data_status_view"> </div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Dibuat Tanggal</label>
              <div class="col-md-6" id="data_create_date_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Diupdate Tanggal</label>
              <div class="col-md-6" id="data_update_date_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Dibuat Oleh</label>
              <div class="col-md-6" id="data_create_by_view">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Diupdate Oleh</label>
              <div class="col-md-6" id="data_update_by_view">
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <?php 
        // if (in_array($access['l_ac']['edt'], $access['access'])) {
          echo '<button type="submit" class="btn btn-info" onclick="edit_modal()"><i class="fa fa-edit"></i> Edit</button>';
        // }
        ?>
        <button type="button" class="btn btn-default" data-dismiss="modal">Kembali</button>
      </div>
    </div>
  </div>
</div>
<div id="modal_edit" class="modal fade" role="dialog">
  <div class="modal-dialog modal-md">
    <div class="modal-content">
      <div class="modal-header">
        <h2 class="modal-title">Edit Data <b class="text-muted header_data"></b></h2>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <input type="hidden" name="data_id_view">
      </div>
      <div class="modal-body">
        <form id="form_edit">
          <div class="row">
            <div class="col-md-12">
              <input type="hidden" id="data_id_edit" name="id">
              <div class="form-group">
                <label>Kode Bagian</label>
                <input type="text" placeholder="Masukkan Kode Bagian" name="kode" id="data_kode_edit" class="form-control" readonly="readonly">
              </div>
              <div class="form-group">
                <label>Nama Bagian</label>
                <input type="text" placeholder="Masukkan Nama Bagian" name="nama" id="data_name_edit" class="form-control" required="required">
              </div>
              <div class="form-group">
                <label>Keterangan</label>
                <textarea name="keterangan" class="form-control" id="data_keterangan_edit" placeholder="Keterangan"></textarea>
              </div>
            </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <?php 
        // if (in_array($access['l_ac']['edt'], $access['access'])) {
          echo '<button type="submit" class="btn btn-info" onclick="do_edit()"><i class="fa fa-edit"></i> Simpan</button>';
        // }
        ?>
        <button type="button" class="btn btn-default" data-dismiss="modal">Kembali</button>
      </div>
    </div>
  </div>
</div>
<div id="modal_delete_partial"></div>
<script src="<?php echo base_url('asset/plugins/jquery/jquery.min.js')?>"></script>
<script>
  var url_select="<?php echo base_url('global_control/select2_global');?>";
  var table="master_bagian";
  var column="id_bagian";
  $(document).ready(function(){
    refreshCode();
    $('#table_data').DataTable( {
      ajax: {
        url: "<?php echo base_url('master/master_bagian/view_all/')?>",
        type: 'POST',
        async: true,
        data:{access:"<?php echo $this->codegenerator->encryptChar($access);?>"}
      },
      scrollX: true,
      columnDefs: [
        {   targets: 0, 
          width: '5%',
          render: function ( data, type, full, meta ) {
            return '<center>'+(meta.row+1)+'.</center>';
          }
        },
        {   targets: 1,
          width: '15%',
          render: function ( data, type, full, meta ) {
            return data;
          }
        },
        {   targets: 2,
          width: '15%',
          render: function ( data, type, full, meta ) {
            return data;
          }
        },
        {   targets: 5,
          width: '5%',
          render: function ( data, type, full, meta ) {
            return '<center>'+data+'</center>';
          }
        },
        //aksi
        {   targets: 6, 
          width: '5%',
          render: function ( data, type, full, meta ) {
            return '<center>'+data+'</center>';
          }
        },
      ]
    });
  });
  function refreshCode() {
    kode_generator("<?php echo base_url('cpayroll/master_komponen/kode');?>",'kode_komponen');
    getSelect2("<?php echo base_url('cpayroll/master_komponen/OperationAritmatic')?>",'operation_add');
    getSelect2("<?php echo base_url('cpayroll/master_komponen/getJenisKomponenList')?>",'jenis_komponen_add');
    getSelect2("<?php echo base_url('cpayroll/master_komponen/dataVariable')?>",'data_first, #data_second');
  }
  function do_add(){
    if($("#form_add")[0].checkValidity()) {
      submitAjax("<?php echo base_url('cpayroll/add_master_komponen')?>",null,'form_add');
      $('#table_data').DataTable().ajax.reload(function(){
        Pace.restart();
      });
      $('#form_add')[0].reset();
        refreshCode();
    }else{
      notValidParamx();
    } 
  }
  function view_modal(id)
  {
    var data={id_bagian:id};
    var callback=getAjaxData("<?php echo base_url('master/master_bagian/view_one')?>",data);  
    $('#modal_view').modal('show');
    $('.header_data').html(callback['nama']);
    $('#data_kode_view').html(callback['kode_bagian']);
    $('#data_name_view').html(callback['nama']);
    $('#data_keterangan_view').html(callback['keterangan']);
    var status = callback['status'];
    if(status==1){
      var statusval = '<b class="text-success">Aktif</b>';
    }else{
      var statusval = '<b class="text-danger">Tidak Aktif</b>';
    }
    $('#data_status_view').html(statusval);
    $('#data_create_date_view').html(callback['create_date']+' WIB');
    $('#data_update_date_view').html(callback['update_date']+' WIB');
    $('input[name="data_id_view"]').val(callback['id']);
    $('#data_create_by_view').html(callback['nama_buat']);
    $('#data_update_by_view').html(callback['nama_update']);
  }
  function edit_modal() {
    var id = $('input[name="data_id_view"]').val();
    var data={id_bagian:id};
    var callback=getAjaxData("<?php echo base_url('master/master_bagian/view_one')?>",data); 
    $('#modal_view').modal('toggle');
    setTimeout(function () {
       $('#modal_edit').modal('show');
    },600); 
    $('.header_data').html(callback['nama']);
    $('#data_id_edit').val(callback['id']);
    $('#data_kode_edit').val(callback['kode_bagian']);
    $('#data_name_edit').val(callback['nama']);
    $('#data_keterangan_edit').val(callback['keterangan']);
  }
  function delete_modal(id) {
    var data={id_bagian:id};
    var callback=getAjaxData("<?php echo base_url('master/master_bagian/view_one')?>",data);
    var datax={table:table,column:column,id:id,nama:callback['nama']};
    loadModalAjax("<?php echo base_url('main/load_modal_delete')?>",'modal_delete_partial',datax,'delete');
  }
  function do_status(id,data) {
    var data_table={status:data};
    var where={id_bagian:id};
    var datax={table:table,where:where,data:data_table};
    submitAjax("<?php echo base_url('main/change_status')?>",null,datax,null,null,'status');
    $('#table_data').DataTable().ajax.reload(function (){
      Pace.restart();
    });
  }
  function do_edit(){
    if($("#form_edit")[0].checkValidity()) {
      submitAjax("<?php echo base_url('master/edt_bagian')?>",'modal_edit','form_edit',null,null);
      $('#table_data').DataTable().ajax.reload(function (){
        Pace.restart();
      });
    }else{
      notValidParamx();
    } 
  }
  function do_add(){
    if($("#form_add")[0].checkValidity()) {
      submitAjax("<?php echo base_url('master/add_bagian')?>",null,'form_add',null,null);
      $('#table_data').DataTable().ajax.reload(function (){
        Pace.restart();
      });
      $('#form_add')[0].reset();
      refreshCode();
    }else{
      notValidParamx();
    } 
  }
</script>

