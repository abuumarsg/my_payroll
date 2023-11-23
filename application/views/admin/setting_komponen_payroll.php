
<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Setting Rumus Payroll</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item active">DataTables</li>
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
            <h3 class="card-title">DataTable with default features</h3>
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
              <form id="form_add">
                <br>
                <div class="row">
                  <div class="col-md-6">
                    <table border="1">
                      <tr>
                        <td style="background-color:#008000;padding:10px;" class="text-center"><h4>KOMPONEN PENAMBAH</h4></td>
                      </tr>
                      <tr>
                        <td style="background-color:#E0FCE3;padding:10px;">
                          <div class="form-group">
                            <select name="penambah" class="duallistbox" multiple="multiple" style="height: 200px;" id="for_komponen_penambah">
                            </select>
                          </div>
                        </td>
                      </tr>
                    </table>
                  </div>
                  <div class="col-md-6">
                    <table style="padding:2px;" border="1">
                      <tr>
                        <td style="background-color:#ff0000;padding:10px;" class="text-center"><h4>KOMPONEN PENGURANG</h4></td>
                      </tr>
                      <tr>
                        <td style="background-color:#FCE0E0;padding:10px;">
                          <div class="form-group">
                            <select name="pengurang" class="duallistbox" multiple="multiple" style="height: 200px;" id="for_komponen_pengurang"></select>
                          </div>
                        </td>
                      </tr>
                    </table>
                  </div>
                </div>
                <br>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group pull-right">
                      <button type="button" onclick="do_add()" id="btn_add" class="btn btn-success"><i class="fa fa-floppy-o"></i> Simpan</button>
                    </div>
                  </div>
                </div>
                <hr>
              </form>
            </div>
            <!-- laksdaksdj -->
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
        <h2 class="modal-title">Detail Data <b class="text-muted header_data"></b></h2>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <input type="hidden" name="data_id_view">
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-6">
            <div class="form-group row">
              <label class="col-md-6 control-label">Kode Master Izin/Cuti</label>
              <div class="col-md-6" id="data_id_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Nama Master Izin/Cuti</label>
              <div class="col-md-6" id="data_kode_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Maksimal Izin/Cuti</label>
              <div class="col-md-6" id="data_nama_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Potong Upah</label>
              <div class="col-md-6" id="data_sifat_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Pengurang Penilaian</label>
              <div class="col-md-6" id="data_nama1_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Potongan</label>
              <div class="col-md-6" id="data_nama2_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Penggajian (satuan)</label>
              <div class="col-md-6" id="data_operation_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Jenis(Izin/Cuti)</label>
              <div class="col-md-6" id="data_status_view"></div>
            </div>
            <div class="form-group row" id="view_potong_cuti" style="display:none;">
              <label class="col-md-6 control-label">Potong Cuti</label>
              <div class="col-md-6" id="data_create_date_view"></div>
            </div>
            <div class="form-group row">
                <label class="col-md-6 control-label">Besar Potongan Gaji (%)</label>
                <div class="col-md-6" id="data_update_date_view"></div>
            </div>
            <div class="form-group row">
              <label class="col-md-6 control-label">Dokumen</label>
              <div class="col-md-6" id="data_create_by_view"></div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group row">
              <label class="col-md-6 control-label">Status</label>
              <div class="col-md-6" id="data_update_by_view">
              
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
<script src="<?php echo base_url('asset/plugins/jquery/jquery.min.js')?>"></script>
<script>
  $(document).ready(function(){
    refreshCode();
    $('#table_data').DataTable( {
      ajax: {
        url: "<?php echo base_url('cpayroll/master_komponen/view_all/')?>",
        type: 'POST',
        async: true,
        data:{access:''}
      },
      scrollX: true,
      // paging: true,
      // lengthChange: false,
      // searching: true,
      // ordering: true,
      // // info: true,
      // autoWidth: true,
      // responsive: true,
      // buttons: ["copy", "csv", "excel", "pdf", "print", "colvis"],
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
    getSelect2("<?php echo base_url('cpayroll/master_komponen/dataVariableNrumus')?>",'for_komponen_penambah, #for_komponen_pengurang');
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
    $('#data_id_view').html(callback['id']);
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
</script>

