
<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1><i class="far fa-credit-card"></i> Komponen Payroll</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#"><i class="fas fa-tachometer-alt"></i> Beranda</a></li>
          <li class="breadcrumb-item active"><i class="far fa-credit-card"></i> Komponen Payroll</li>
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
            <h3 class="card-title"><i class="far fa-credit-card"></i> Komponen Payroll</h3>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-md-6">
                <div class="pull-left">
                  <button class="btn btn-success btn-flat" type="button" data-toggle="collapse" data-target="#add_acc"><i class="fa fa-plus"></i> Tambah Komponen</button>
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
                  <div class="col-md-2">
                    <div class="form-group">
                      <label>Kode</label>
                      <input type="text" placeholder="Masukkan Kode" name="kode" id="kode_komponen" class="form-control" readonly="readonly">
                    </div>
                  </div>
                  <div class="col-md-7">
                    <div class="form-group">
                      <label>Nama Komponen</label>
                      <input type="text" placeholder="Masukkan Nama Komponen" name="nama" class="form-control" required="required">
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="form-group">
                      <label>Sifat</label>
                      <select class="form-control select2" name="sifat" id="jenis_komponen_add" style="width: 100%;" required="required"></select>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-2">
                    <div class="form-group">
                      <label>Select</label><br>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="radio1" value="data">
                          <label class="form-check-label">&nbsp;Data</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="radio1" value="variable">
                          <label class="form-check-label">&nbsp;Variable</label>
                        </div>
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="form-group" id="div_first_variable">
                      <label>First Variable</label>
                      <input type="text" placeholder="First Variable" name="variable_first" class="form-control" id="variable">
                      <div id="data_firstx" style="display:none;">
                        <select class="form-control select2" name="data_first" style="width: 100%;display:none;" id="data_first"></select>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="form-group">
                      <label>Operation</label>
                      <select class="form-control select2" name="operation" id="operation_add" style="width: 100%;"></select>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="form-group">
                      <label>Select</label><br>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="radio2" value="data">
                          <label class="form-check-label">&nbsp;Data</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="radio2" value="variable">
                          <label class="form-check-label">&nbsp;Variable</label>
                        </div>
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="form-group" id="div_second_variable">
                      <label>Second Variable</label>
                      <input type="text" placeholder="Second Variable" name="variable_second" class="form-control" id="variable">
                      <div id="data_secondx" style="display:none;">
                        <select class="form-control select2" name="data_second" style="width: 100%;display:none;" id="data_second"></select>
                      </div>
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
                <th>Sifat</th>
                <th>Variable First</th>
                <th>Operation</th>
                <th>Variable Second</th>
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
        <h3 class="modal-title">Detail Data <b class="text-muted header_data"></b></h3>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <input type="hidden" name="data_id_view">
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-6">
            <div class="form-group row">
              <label class="col-md-6 control-label">Kode</label>
              <div class="col-md-6" id="data_kode_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Nama</label>
              <div class="col-md-6" id="data_nama_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Sifat</label>
              <div class="col-md-6" id="data_sifat_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Variable First</label>
              <div class="col-md-6" id="data_nama1_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Operation</label>
              <div class="col-md-6" id="data_operation_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Variable Second</label>
              <div class="col-md-6" id="data_nama2_view"></div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group row">
              <label class="col-md-6 control-label">Status</label>
              <div class="col-md-6" id="data_status_view">
              
              </div>
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
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title">Edit Data <b class="text-muted header_data"></b></h3>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form id="form_edit">
          <div class="row">
            <div class="col-md-12">
              <input type="hidden" id="data_id_edit" name="id">
              <div class="form-group">
                <label>Kode</label>
                <input type="text" placeholder="Masukkan Kode" name="kode" id="kode_komponen_edit" class="form-control" readonly="readonly">
              </div>
              <div class="form-group">
                <label>Nama Komponen</label>
                <input type="text" placeholder="Masukkan Nama Komponen" name="nama" class="form-control" required="required">
              </div>
              <div class="form-group">
                <label>Sifat</label>
                <select class="form-control select2" name="sifat" id="jenis_komponen_edit" style="width: 100%;" required="required"></select>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4">
              <div class="form-group">
                <label>Select</label><br>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="radio1e" value="data" id="selectfirstedit1">
                    <label class="form-check-label">&nbsp;Data</label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="radio1e" value="variable" id="selectfirstedit2">
                    <label class="form-check-label">&nbsp;Variable</label>
                  </div>
              </div>
            </div>
            <div class="col-md-8">
              <div class="form-group" id="div_first_variableE">
                <label>First Variable</label>
                <input type="text" placeholder="First Variable" name="variable_first" class="form-control" id="variable">
                <div id="data_firstx" style="display:none;">
                  <select class="form-control select2" name="data_first" style="width: 100%;display:none;" id="data_firste"></select>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label>Operation</label>
                <select class="form-control select2" name="operation" id="operation_edit" style="width: 100%;"></select>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4">
              <div class="form-group">
                <label>Select</label><br>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="radio2e" value="data" id="selectsecondedit1">
                    <label class="form-check-label">&nbsp;Data</label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="radio2e" value="variable" id="selectsecondedit2">
                    <label class="form-check-label">&nbsp;Variable</label>
                  </div>
              </div>
            </div>
            <div class="col-md-8">
              <div class="form-group" id="div_second_variableE">
                <label>Second Variable</label>
                <input type="text" placeholder="Second Variable" name="variable_second" class="form-control" id="variable">
                <div id="data_secondx" style="display:none;">
                  <select class="form-control select2" name="data_second" style="width: 100%;display:none;" id="data_seconde"></select>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <?php 
        if (in_array($access['l_ac']['edt'], $access['access'])) {
          echo '<button type="submit" class="btn btn-info" onclick="do_edit()"><i class="fa fa-edit"></i> Simpan</button>';
        }
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
  var table="master_komponen";
  var column="id";
  $(document).ready(function(){
    refreshCode();
    $('#table_data').DataTable( {
      ajax: {
        url: "<?php echo base_url('cpayroll/master_komponen/view_all/')?>",
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
        {   targets: 8,
          width: '5%',
          render: function ( data, type, full, meta ) {
            return '<center>'+data+'</center>';
          }
        },
        //aksi
        {   targets: 9, 
          width: '5%',
          render: function ( data, type, full, meta ) {
            return '<center>'+data+'</center>';
          }
        },
      ]
    });
    $("input[name='radio1']").change(function(){
        var radio1 = $("input[name='radio1']:checked").val();
        if(radio1 == 'data'){
			    $('#div_first_variable #variable').hide();
			    $('#div_first_variable #data_firstx').show();
        }else{
			    $('#div_first_variable #variable').show();
			    $('#div_first_variable #data_firstx').hide();
        }
    });
    $("input[name='radio2']").change(function(){
        var radio2 = $("input[name='radio2']:checked").val();
        if(radio2 == 'data'){
			    $('#div_second_variable #variable').hide();
			    $('#div_second_variable #data_secondx').show();
        }else{
			    $('#div_second_variable #variable').show();
			    $('#div_second_variable #data_secondx').hide();
        }
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
    var data={id:id};
    var callback = getAjaxData("<?php echo base_url('cpayroll/master_komponen/view_one')?>",data); 
    $('#modal_view').modal('show');
    $('input[name="data_id_view"]').val(id);
    $('.header_data').html(callback['nama']);
    $('#data_kode_view').html(callback['kode']);
    $('#data_nama_view').html(callback['nama']);
    $('#data_sifat_view').html(callback['sifat']);
    $('#data_nama1_view').html(callback['nama1']);
    $('#data_nama2_view').html(callback['nama2']);
    $('#data_operation_view').html(callback['operation']);
    $('#data_status_view').html(callback['status']);
    $('#data_create_date_view').html(callback['create_date']);
    $('#data_update_date_view').html(callback['update_date']);
    $('#data_create_by_view').html(callback['create_by']);
    $('#data_update_by_view').html(callback['update_by']);
  }
  function edit_modal() {
    getSelect2("<?php echo base_url('cpayroll/master_komponen/getJenisKomponenList')?>",'jenis_komponen_edit');
    getSelect2("<?php echo base_url('cpayroll/master_komponen/OperationAritmatic')?>",'operation_edit');
    getSelect2("<?php echo base_url('cpayroll/master_komponen/dataVariable')?>",'data_firste, #data_seconde');
    $('#modal_view').modal('toggle');
    setTimeout(function () {
       $('#modal_edit').modal('show');
    },600); 
    var id = $('input[name="data_id_view"]').val();
    var data={id:id};
    var callback=getAjaxData("<?php echo base_url('cpayroll/master_komponen/view_one')?>",data); 
    $('.header_data').html(callback['nama']);
    $('#data_id_edit').val(callback['id']);
    $('#modal_edit input[name="nama"]').val(callback['nama']);
    $('#jenis_komponen_edit').val(callback['sifatE']).trigger('change');
    $('#operation_edit').val(callback['operation']).trigger('change');
    $('#kode_komponen_edit').val(callback['kode']);
    if(callback['type_first'] == 'data'){
      $('#selectfirstedit1').prop('checked', true);
      $('#div_first_variableE #variable').hide();
      $('#div_first_variableE #data_firstx').show();
      $('#modal_edit #data_firste').val(callback['first']).trigger('change');
    }else{
      $('#selectfirstedit2').prop('checked', true);
      $('#div_first_variableE #variable').show();
      $('#div_first_variableE #data_firstx').hide();
      $('#modal_edit input[name="variable_first"]').val(callback['first']);
    }
    if(callback['type_second'] == 'data'){
      $('#selectsecondedit1').prop('checked', true);
      $('#div_second_variableE #variable').hide();
      $('#div_second_variableE #data_secondx').show();
      $('#modal_edit #data_seconde').val(callback['second']).trigger('change');
    }else{
      $('#selectsecondedit2').prop('checked', true);
      $('#div_second_variableE #variable').show();
      $('#div_second_variableE #data_secondx').hide();
      $('#modal_edit input[name="variable_second"]').val(callback['second']);
    }
    $("input[name='radio1e']").change(function(){
        var radio1 = $("input[name='radio1e']:checked").val();
        if(radio1 == 'data'){
			    $('#div_first_variableE #variable').hide();
			    $('#div_first_variableE #data_firstx').show();
        }else{
			    $('#div_first_variableE #variable').show();
			    $('#div_first_variableE #data_firstx').hide();
        }
    });
    $("input[name='radio2e']").change(function(){
        var radio2 = $("input[name='radio2e']:checked").val();
        if(radio2 == 'data'){
			    $('#div_second_variableE #variable').hide();
			    $('#div_second_variableE #data_secondx').show();
        }else{
			    $('#div_second_variableE #variable').show();
			    $('#div_second_variableE #data_secondx').hide();
        }
    });
  }
  function delete_modal(id) {
    var data={id:id};
    var callback=getAjaxData("<?php echo base_url('cpayroll/master_komponen/view_one')?>",data);
    var datax={table:table,column:column,id:id,nama:callback['nama']};
    loadModalAjax("<?php echo base_url('main/load_modal_delete')?>",'modal_delete_partial',datax,'delete');
  }
  function do_status(id,data) {
    var data_table={status:data};
    var where={id:id};
    var datax={table:table,where:where,data:data_table};
    submitAjax("<?php echo base_url('main/change_status')?>",null,datax,null,null,'status');
    $('#table_data').DataTable().ajax.reload(function (){
      Pace.restart();
    });
  }
  function do_edit(){
    if($("#form_edit")[0].checkValidity()) {
      submitAjax("<?php echo base_url('cpayroll/edit_master_komponen')?>",'modal_edit','form_edit',null,null);
      $('#table_data').DataTable().ajax.reload(function (){
        Pace.restart();
      });
    }else{
      notValidParamx();
    } 
  }
</script>

