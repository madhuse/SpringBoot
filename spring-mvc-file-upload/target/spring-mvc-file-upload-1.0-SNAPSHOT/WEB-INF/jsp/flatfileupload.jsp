<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Otsi</title>
    <link rel="stylesheet" href='<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href='<c:url value="/resources/dist/css/AdminLTE.min.css"/>'>
    <link rel="stylesheet" href='<c:url value="/resources/dist/css/skins/_all-skins.min.css"/>'>
    <link rel="stylesheet" href='<c:url value="/resources/plugins/iCheck/flat/blue.css"/>'>
    <link rel="stylesheet" href='<c:url value="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"/>'>
	<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
	
	<link href='<c:url value="/resources/plugins/draganddrop/css/css"/>' rel="stylesheet">
	<link href='<c:url value="/resources/plugins/draganddrop/css/jquery.filer.css"/>' rel="stylesheet">
	<link href='<c:url value="/resources/plugins/draganddrop/css/themes/jquery.filer-dragdropbox-theme.css"/>' rel="stylesheet">
	<!-- css drag and drop ----->
	<link rel="stylesheet" href='<c:url value="/resources/templatenew/bootstrap/css/bootstrap.min.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/navigation.css"/>'>
	<!-- Theme style -->
	<link rel="stylesheet" href='<c:url value="/resources/templatenew/dist/css/AdminLTE.min.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/customsteps.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/templatenew/dist/css/skins/skin-blue.min.css"/>'>
	<link href='<c:url value="/resources/css/jquery-ui-1.10.4.custom.css"/>' rel="stylesheet" type="text/css"/>
	<link href='<c:url value="/resources/jQuery.filer-1.3.0/css/jquery.filer.css"/>' rel="stylesheet">
	<link href='<c:url value="/resources/jQuery.filer-1.3.0/css/themes/jquery.filer-dragdropbox-theme.css"/>' rel="stylesheet">
	<link href='<c:url value="/resources/alerts/alertify.core.css"/>' rel="stylesheet">
  <link href='<c:url value="/resources/alerts/alertify.default.css"/>' rel="stylesheet">
  <link href='<c:url value="/resources/css/loadingback.css"/>' rel="stylesheet">
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
      <header class="main-header">
        <a href="index.html" class="logo">
          <span class="logo-mini"><img src="dist/img/logo.png" class="img-circle" alt="User Image"></span>
          <span class="logo-lg"><b>Easy</b>Otsi</span>
        </a>
        <nav class="navbar navbar-static-top" role="navigation">
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="dist/img/user.png" class="user-image" alt="User Image">
                  <span class="hidden-xs">Harini</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="user-header">
                    <img src="dist/img/user.png" class="img-circle" alt="User Image">
                    <p>
                      Harini
                      <small>harini@gmail.com</small>
                    </p>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="#" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
              <li>
               
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <aside class="main-sidebar">
        <section class="sidebar">
          <div class="user-panel">
            <div class="pull-left image">
              <img src="dist/img/user.png" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p>Harini</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="active treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>Source_system</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
			  <li class="active"><a href="flat.html"><i class="fa fa-circle-o"></i>FlatFile</a></li>
                <li class="active"><a href="Database.html"><i class="fa fa-circle-o"></i>Database</a></li>
				<li class="active"><a href="index.html"><i class="fa fa-circle-o"></i>Api</a></li>
              </ul>
            </li>
			
			
          </ul>
        </section>
      </aside>
      <div class="content-wrapper">
	  
      <!-- Here to right for div content of mine -->
	  <!---
	  <div class="row">
		<div class="col s12">
			
			<div id="zdrop" class="fileuploader ">
				<div id="upload-label" style="width: 200px;">
					<i class="material-icons">cloud_upload</i>
					<span class="title">Drag your Drop Files here</span>
					<span>Some description here <span/>
				</div>
			</div>
			
			<div class="preview-container">
				<div class="header">
					<span>Uploaded Files</span>	
					<i id="controller" class="material-icons">keyboard_arrow_down</i>
				</div>
				<div class="collection card" id="previews">
					<div class="collection-item clearhack valign-wrapper item-template" id="zdrop-template">
						<div class="left pv zdrop-info" data-dz-thumbnail>
							<div>
								<span data-dz-name></span> <span data-dz-size></span>
							</div>
							<div class="progress">
								<div class="determinate" style="width:0" data-dz-uploadprogress></div>
							</div>
							<div class="dz-error-message"><span data-dz-errormessage></span></div>
						</div>

						<div class="secondary-content actions"> 
							<a href="#!" data-dz-remove class="btn-floating ph red white-text waves-effect waves-light"><i class="material-icons white-text">clear</i></i></a>
						</div>
					</div>
				</div>
			</div>--->
			<!-- File upload csv,tsv file detection -->
			  <div class="content-wrapper">
			<section class="content-header">
			</section>
			<section class="content">

			  <div class="row">
		  <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 col-md-offset-2">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		  <div class="breadcrumb flat">
			<a href="/otsieasy/datasource">Choose Datasource</a>
			<a href="/otsieasy/databaseconf" class="active" >Configure Files</a>
			<a href="#" class="active"  >Choose Datatypes</a>
		</div>
		</div>
		  </div>
		  
		  <div class="row">
			 
			  <form method="POST" id="ffform"  action="${pageContext.request.contextPath}/multiplecsv"  enctype="multipart/form-data">
			   <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
			  <div class="col-md-6 col-xs-6 col-md-offset-3"  >
				
										<input id="flatfiles"  name="file" ondrag="getInputForm()" ondragexit="getInputForm()" multiple="multiple" onchange="showInputFileds()" required="required" type="file">
									
				</div>
				</div>
				<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12" >
				
				<div id="formfields" class="box box-primary" style="display: none;">
					<div class="box-header">
					  <h3  class="box-title">Configure Files</h3>
					</div>
					<div class="box-body ">
				   <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
				<div class="col-md-3 col-lg-3 col-sm-12 col-xs-12 " >
				<div class="form-group input-group">
										<label>Select Delimiter</label> 
										<select required="required" name="delimiter" class="form-control">
											<option value=",">Comma (,)</option>
											<option value="	">Tab (	)</option>
											<option value="||">Pipe (||)</option>
										</select>
									</div>
									</div>
									<div class="col-md-3 col-lg-3 col-sm-12 col-xs-12" >
									<div class="form-group input-group">
										<label>Header</label>
										<div class="radio">
											<label>
												<input type="radio" value="true" name="header" >Header Available
											</label>
										</div>
										<div class="radio">
											<label>
												<input type="radio" value="false"  name="header"  checked>No Header
											</label>
										</div>
										</div>
										</div>
										<div class="col-md-4 col-lg-4 col-sm-12 col-xs-12" >
										 <div class="form-group input-group">
										<label>Upload Type</label>
										<div class="radio">
											<label>
												<input type="radio" value="append"  onchange="getTableInputs()" name="uploadType" >&nbsp Append
											</label>
											</div>
											 <div class="radio">
											<label>
												<input type="radio" value="new"  onchange="getInputForm()" name="uploadType" checked>&nbsp Create New
											</label>
											
										</div>
										
									</div>
									</div>
									<div class="col-md-2 col-lg-2 col-sm-12 col-xs-12">
									 <button onclick="lodingScreen()" class="btn btn-info btn-lg" type="submit" ><i class="fa fa-upload" aria-hidden="true"></i> Continue</button>
									 </div>
									</div>
									
									<div class="row">
									<div class="col-md-12 col-xs-12">
									<div id="inputforms">
									</div>
									</div>
									</div>
									
									</div>
									</div>
									</div>
									
									 
				</form>
			  </div>
			   <div class="row">
			   <div class="col-xs-12">
			   <div id="dropbox" class="box box-primary" style="display: none;">
					<div class="box-header">
					  <h3 class="box-title">Drop Files Here</h3>
					</div>
					<div class="box-body ">
			  <div  style="max-height: calc(90vh - 210px);overflow-y: auto;" class="draggableContainer">
			  <div id="usertables" data-offset="20" >
			 </div>
			  </div>
			  </div>
			  </div>
			  </div>
			  </div>
			 
		  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Available Columns</h4>
			  </div>
			  <div class="modal-body">
				<div class="table-responsive">
											<table id="availcolumns" class="table table-bordered table-hover table-striped">
												<thead>
													<tr>
														<th>Column Names</th>
													</tr>
												</thead>
												<tbody>
													
												</tbody>
											</table>
										</div>
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
			  </div>
			</div>
		  </div>
		</div> 

		<div class="lodmodal"></div>
			</section>
		  </div>
		</div>
      </div>
	  <!-- end-->
	   <div class="row">
       <div class="col-xs-12">
       <div id="dropbox" class="box box-primary" style="display: none;">
            <div class="box-header">
              <h3 class="box-title">Drop Files Here</h3>
            </div>
            <div class="box-body ">
      <div  style="max-height: calc(90vh - 210px);overflow-y: auto;" class="draggableContainer">
      <div id="usertables" data-offset="20" >
     </div>
      </div>
      </div>
      </div>
      </div>
      </div>
      

      <!-- Control Sidebar -->
      <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
          <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
          <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
          <!-- Home tab content -->
          <div class="tab-pane" id="control-sidebar-home-tab">
            <h3 class="control-sidebar-heading">Recent Activity</h3>
            <ul class="control-sidebar-menu">
              <li>
                <a href="javascript::;">
                  <i class="menu-icon fa fa-birthday-cake bg-red"></i>
                  <div class="menu-info">
                    <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
                    <p>Will be 23 on April 24th</p>
                  </div>
                </a>
              </li>
              <li>
                <a href="javascript::;">
                  <i class="menu-icon fa fa-user bg-yellow"></i>
                  <div class="menu-info">
                    <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>
                    <p>New phone +1(800)555-1234</p>
                  </div>
                </a>
              </li>
              <li>
                <a href="javascript::;">
                  <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>
                  <div class="menu-info">
                    <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>
                    <p>nora@example.com</p>
                  </div>
                </a>
              </li>
              <li>
                <a href="javascript::;">
                  <i class="menu-icon fa fa-file-code-o bg-green"></i>
                  <div class="menu-info">
                    <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>
                    <p>Execution time 5 seconds</p>
                  </div>
                </a>
              </li>
            </ul><!-- /.control-sidebar-menu -->

            <h3 class="control-sidebar-heading">Tasks Progress</h3>
            <ul class="control-sidebar-menu">
              <li>
                <a href="javascript::;">
                  <h4 class="control-sidebar-subheading">
                    Custom Template Design
                    <span class="label label-danger pull-right">70%</span>
                  </h4>
                  <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                  </div>
                </a>
              </li>
              <li>
                <a href="javascript::;">
                  <h4 class="control-sidebar-subheading">
                    Update Resume
                    <span class="label label-success pull-right">95%</span>
                  </h4>
                  <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                  </div>
                </a>
              </li>
              <li>
                <a href="javascript::;">
                  <h4 class="control-sidebar-subheading">
                    Laravel Integration
                    <span class="label label-warning pull-right">50%</span>
                  </h4>
                  <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                  </div>
                </a>
              </li>
              <li>
                <a href="javascript::;">
                  <h4 class="control-sidebar-subheading">
                    Back End Framework
                    <span class="label label-primary pull-right">68%</span>
                  </h4>
                  <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                  </div>
                </a>
              </li>
            </ul><!-- /.control-sidebar-menu -->

          </div><!-- /.tab-pane -->
          <!-- Stats tab content -->
          <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div><!-- /.tab-pane -->
          <!-- Settings tab content -->
          <div class="tab-pane" id="control-sidebar-settings-tab">
            <form method="post">
              <h3 class="control-sidebar-heading">General Settings</h3>
              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Report panel usage
                  <input type="checkbox" class="pull-right" checked>
                </label>
                <p>
                  Some information about this general settings option
                </p>
              </div><!-- /.form-group -->

              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Allow mail redirect
                  <input type="checkbox" class="pull-right" checked>
                </label>
                <p>
                  Other sets of options are available
                </p>
              </div><!-- /.form-group -->

              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Expose author name in posts
                  <input type="checkbox" class="pull-right" checked>
                </label>
                <p>
                  Allow the user to show his name in blog posts
                </p>
              </div><!-- /.form-group -->

              <h3 class="control-sidebar-heading">Chat Settings</h3>

              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Show me as online
                  <input type="checkbox" class="pull-right" checked>
                </label>
              </div><!-- /.form-group -->

              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Turn off notifications
                  <input type="checkbox" class="pull-right">
                </label>
              </div>

              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Delete chat history
                  <a href="javascript::;" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                </label>
              </div>
            </form>
          </div>
        </div>
      </aside>
      <div class="control-sidebar-bg"></div>
    </div>
    <script src='<c:url value="/resources/plugins/jQuery/jQuery-2.1.4.min.js"/>'></script>
    <script src='<c:url value="/resources/plugins/sparkline/jquery-ui.min.js"/>'></script>
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <script src='<c:url value="/resources/plugins/sparkline/raphael-min.js"/>'></script>
    <script src='<c:url value="/resources/plugins/sparkline/jquery.sparkline.min.js"/>'></script>
    <script src='<c:url value="/resources/plugins/knob/jquery.knob.js"/>'></script>
    <script src='<c:url value="/resources/plugins/sparkline/moment.min.js"/>'></script>
    <script src='<c:url value="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"/>'></script>
    <script src='<c:url value="/resources/plugins/slimScroll/jquery.slimscroll.min.js"/>'></script>
    <script src='<c:url value="/resources/plugins/fastclick/fastclick.min.js"/>'></script>
    <script src='<c:url value="/resources/dist/js/demo.js"/>'></script>
		
		<!-- drag & Drop -->
		<script src='<c:url value="/resources/js/jquery-3.1.0.min.js"/>' crossorigin="anonymous"></script>
	<!-- Removable drag and drop-->
	<script src='<c:url value="/resources/templatenew/plugins/jQuery/jquery-2.2.3.min.js"/>'></script>
	<script src='<c:url value="/resources/js/jquery-ui.js"/>'></script>
	<script src='<c:url value="/resources/jQuery.filer-1.3.0/js/jquery.filer.min.js"/>' type="text/javascript"></script>
	<script src='<c:url value="/resources/jQuery.filer-1.3.0/examples/dragdrop/js/custom.js"/>' type="text/javascript"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src='<c:url value="/resources/templatenew/bootstrap/js/bootstrap.min.js"/>'></script>
	<script src='<c:url value="/resources/js/bootstrap-notify.min.js"/>'></script>
	<script src='<c:url value="/resources/templatenew/plugins/select2/select2.full.min.js"/>'></script>
	<script src='<c:url value="/resources/templatenew/dist/js/app.min.js"/>'></script>
 <script type="text/javascript">
 $(document).ready(function () {
        $(function() {
            $(".draggable").draggable({
                //revert: true,
                helper: 'clone',
                start: function(event, ui) {
                    $(this).fadeTo('fast', 0.5);
                },
                stop: function(event, ui) {
                    $(this).fadeTo(0, 1);
                }
            });

            $(".droppable").droppable({
                hoverClass: 'active',
                drop: function(event, ui) {
                    this.value = $(ui.draggable).text();
                }
            });
        });
 });
    </script>      
<script type="text/javascript">
function showInputFileds(){
	var ele = document.getElementById("formfields");
	ele.style.display = '';
	getInputForm();
	
}
function lodingScreen()
{
	$body = $("body");
	
	//Harini wrote
	$(function() {
		
	  $("body").validate({
	    rules: {
	      name: "required",
	    }
	  });
	  $body.addClass("loading");
	});			
}
</script>    
<script>
function showCols(idd) {
	
	
		var seltable=idd; 
			
			$("#availcolumns tbody").remove();
			
			$.ajax({
				type : 'GET',
				url : 'getcolumnnames?tablename='+seltable,

				//data: JSON.stringify(editCandidate),
				success : function(response) {
					var trHTML = '';
					$.each(response.columnName,function(i, item) {
						trHTML += '<tr><td>'+seltable+'.'+item+'</td></tr>'
					});
					
					$('#availcolumns').append(trHTML);
				}
			});
			
			$('#myModal').modal('show'); 	
}
	</script>
<script type="text/javascript">
	function showChecked() {
		getInputForm();

		var sel = $('input[name=uploadType]:checked', '#ffform').val()
		
		if (sel === 'append') {
			var ele = document.getElementById("columnsfortable");
			ele.style.display = '';
			getTablesForm();
			
		} else {
			getInputForm();
		}
	}
	function showTables() {
		var ele = document.getElementById("columnsfortable");
		ele.style.display = '';

		//To show
		getTablesForm();

		/* document.getElementById(id).style.display = "inline"; */
	}
	function showOld() {
		var ele = document.getElementById("columnsfortable");
		ele.style.display = 'none';

		//To show
		getInputForm();

		/* document.getElementById(id).style.display = "inline"; */
	}
</script>
<script type="text/javascript">
function getInputForm(){
	var ele = document.getElementById("dropbox");
	ele.style.display = 'none';
	var size=document.getElementById('flatfiles').files.length;
	var files=document.getElementById('flatfiles').files;
	var i;
	var inputss='';
	//$('#tableforms').empty();
	$('#inputforms').empty();
	$('#usertables').empty();
	for (i = 0; i < size; i++) { 
		var sfname=files[i].name.substring(0, 8);
		var fname=files[i].name;
		inputss +='<div class="col-md-6"><div class="form-group input-group">'
	                 +'<span style="background-color: #448ED3;" class="input-group-addon" title="'+fname+'"><font color="white">'+sfname+' File To Be Saved As</font></span>'
	                 +'<input required="required" onchange="searchTable(this);"  type="text" value="" name="tablename[]" class="text-lowercase form-control" placeholder="Save As">'
	                 +' </div></div>'
	}
	var head='<div class="box box-primary"> <div class="box-header"> <h3 class="box-title">Configure Files</h3> </div> <div class="box-body ">';
	var tail='</div></div>';
	$('#inputforms').append(inputss);
	
}
function getTableInputs()
{
	var size=document.getElementById('flatfiles').files.length;
	var files=document.getElementById('flatfiles').files;
	var i;
	var inputss='';
	//$('#tableforms').empty();
	$('#inputforms').empty();
	for (i = 0; i < size; i++) { 
		inputss +='<div class="col-md-2"><input id="'+files[i].name+'" type="hidden" name="tablename[]" value=""><div style="background-color: #7CC142;" class="draggable well"><font size="2px" color="white"><i class="fa fa-file-excel-o" aria-hidden="true"></i>'+files[i].name+'</font></div></div>'
	                
	}
	

	$('#inputforms').append('<div class="box-header"> <h3 class="box-title">Your Files</h3> </div>'+inputss);
	getTablesForm();
	}
function getTablesForm(){
	
	var inputs='';
	$('#usertables').empty();
	
	$.ajax({
		type : 'GET',
		url : 'getusertables',

		//data: JSON.stringify(editCandidate),
		success : function(response) {
	           $.each(response, function(i, item) {
	        	   
	        	   inputs +='<div class="col-md-3"><div style="background-color: #92D8F7;" class="well tables" onclick="showCols(\''+item+'\')"><i class="fa fa-database" aria-hidden="true"></i><font size="4px" color="#06456B"> '+item+'</font><div id="'+item+'" style="border:2px dashed #448ED3;" class="droppable"><br><br></div></div></div>'
	     			});
	          
			$('#usertables').append(inputs);
			
			
			  if(response.length>0)
		    	{
		    	var ele = document.getElementById("dropbox");
				ele.style.display = '';
		    	}
		    else
		    	{
		    	inputs="<h2>No Tables</h2>"
		    	}
			
			$(".draggable").draggable({
		        //revert: true,
		       // helper: 'clone',
		        //revert: "invalid",
                //snap: ".draggableContainer",
                cursor: 'move',
                helper: "clone",
		        stack: ".draggable",
		        start: function(event, ui) {
		            $(this).fadeTo('fast', 0.5);
		        },
		        stop: function(event, ui) {
		            $(this).fadeTo(0, 1);
		        }
		    });

		    $(".droppable").droppable({
		        hoverClass: 'droptext',
		        drop: function(event, ui) {
		        	//alert(this.id);
		        	var ii=$(ui.draggable).text();
		        	document.getElementById(ii).value = this.id;
		        	//$(this).appendTo("#container2");
		        	//alert(document.getElementById(ii).value);
		        	ui.draggable.detach().appendTo($(this));
		            //this.value = $(ui.draggable).text()+","+this.value;
		        }
		    });	
		}
	});	
}
function searchTable(name)
{
	$.ajax({
		type : 'GET',
		url : 'searchtable?tableName='+name.value,

		//data: JSON.stringify(editCandidate),
		success : function(response) {
			if(response===true)
				{
				alert("Exists");
				}

		}
	});
	}
function clenseName(name)
{
	var out=name.replace(/[`~!@#$%^&*()_|+\-=?;0-9: '",.<>\{\}\[\]\\\/]/gi, '');
	return out.toLowerCase();
}
</script> 
	
  </body>
</html>
