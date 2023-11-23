
  <!-- Main Footer -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2023-<?=date('Y')?> <a href="https://adminlte.io">ANZA</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.2.0
    </div>
  </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- <script src="<?php //echo base_url('asset/plugins/jquery/jquery.min.js')?>"></script>
<script src="<?php //echo base_url('asset/plugins/bootstrap/js/bootstrap.bundle.min.js')?>"></script>
<script src="<?php //echo base_url('asset/dist/js/adminlte.js')?>"></script>
<script src="<?php //echo base_url('asset/plugins/chart.js/Chart.min.js')?>"></script>
<script src="<?php //echo base_url('asset/dist/js/pages/dashboard3.js')?>"></script>

<script src="<?php //echo base_url('asset/plugins/datatables/jquery.dataTables.min.js')?>"></script>
<script src="<?php //echo base_url('asset/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')?>"></script>
<script src="<?php //echo base_url('asset/plugins/datatables-responsive/js/dataTables.responsive.min.js')?>"></script>
<script src="<?php //echo base_url('asset/plugins/datatables-responsive/js/responsive.bootstrap4.min.js')?>"></script>
<script src="<?php //echo base_url('asset/plugins/datatables-buttons/js/dataTables.buttons.min.js')?>"></script>
<script src="<?php //echo base_url('asset/plugins/datatables-buttons/js/buttons.bootstrap4.min.js')?>"></script>
<script src="<?php //echo base_url('asset/plugins/jszip/jszip.min.js')?>"></script>
<script src="<?php //echo base_url('asset/plugins/pdfmake/pdfmake.min.js')?>"></script>
<script src="<?php //echo base_url('asset/plugins/pdfmake/vfs_fonts.js')?>"></script>
<script src="<?php //echo base_url('asset/plugins/datatables-buttons/js/buttons.html5.min.js')?>"></script>
<script src="<?php //echo base_url('asset/plugins/datatables-buttons/js/buttons.print.min.js')?>"></script>
<script src="<?php //echo base_url('asset/plugins/datatables-buttons/js/buttons.colVis.min.js')?>"></script>
<script src="<?php //echo base_url('asset/dist/js/adminlte.min.js')?>"></script>
<script src="<?php //echo base_url('asset/js/notify.min.js')?>"></script>
<script src="<?php //echo base_url('asset/js/ajax.js')?>"></script> -->
<script src="<?php echo base_url('asset/plugins/jquery/jquery.min.js')?>"></script>
<script src="<?php echo base_url('asset/plugins/iconpicker/dist/js/fontawesome-iconpicker.js');?>"></script>
<script src="<?php echo base_url('asset/plugins/bootstrap/js/bootstrap.bundle.min.js'); ?>"></script>
<script src="<?php echo base_url('asset/dist/js/adminlte.min.js'); ?>"></script>
<script src="<?php echo base_url('asset/plugins/select2/js/select2.full.min.js'); ?>"></script>
<script src="<?php echo base_url('asset/plugins/moment/moment.min.js');?>"></script>
<script src="<?php echo base_url('asset/plugins/daterangepicker/daterangepicker.js'); ?>"></script>
<script src="<?php echo base_url('asset/plugins/bootstrap-daterangepicker/daterangepicker.js');?>"></script>
<script src="<?php echo base_url('asset/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js');?>"></script>
<script src="<?php echo base_url('asset/plugins/bootstrap-datepicker/dist/locales/bootstrap-datepicker.id.min.js');?>"></script>
<script src="<?php echo base_url('asset/plugins/datatables/jquery.dataTables.min.js')?>"></script>
<script src="<?php echo base_url('asset/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')?>"></script>
<script src="<?php echo base_url('asset/plugins/datatables-responsive/js/dataTables.responsive.min.js')?>"></script>
<script src="<?php echo base_url('asset/plugins/datatables-responsive/js/responsive.bootstrap4.min.js')?>"></script>
<script src="<?php echo base_url('asset/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js')?>"></script>
<script src="<?php echo base_url('asset/plugins/pace/pace.min.js');?>"></script>
<script src="<?php echo base_url('asset/js/notify.min.js')?>"></script>
<script src="<?php echo base_url('asset/js/ajax.js')?>"></script>
<script>
  $(function () {
    // $("#example1").DataTable({
    //   "responsive": true, "lengthChange": false, "autoWidth": false,
    //   "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    // }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    // $('#table_data1').DataTable({
    //   "paging": true,
    //   "lengthChange": true,
    //   "searching": true,
    //   "ordering": true,
    //   "info": true,
    //   "autoWidth": true,
    //   "responsive": true,
    // });
		$('.select2').select2({
			placeholder: 'Pilih Data',
			allowClear: true,
		});
    $('.duallistbox').bootstrapDualListbox();
    // $('.duallistbox').bootstrapDualListbox({
    //   nonSelectedListLabel: 'Non-selected',
    //   selectedListLabel: 'Selected',
    //   preserveSelectionOnMove: 'moved',
    //   moveOnSelect: false,
    //   nonSelectedFilter: 'ion ([7-9]|[1][0-2])'
    // });
  });
</script>
</body>
</html>