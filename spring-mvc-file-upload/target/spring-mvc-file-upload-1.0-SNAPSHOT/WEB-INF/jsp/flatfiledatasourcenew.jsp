<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Flat File</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="resources/templatenew/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/navigation.css">
  
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="resources/templatenew/plugins/select2/select2.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="resources/templatenew/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="resources/css/customsteps.css">
    
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect.
  -->
  <link rel="stylesheet" href="resources/templatenew/dist/css/skins/skin-blue.min.css">
  <link href="resources/css/jquery-ui-1.10.4.custom.css" rel="stylesheet" type="text/css"/>
  <link href="resources/jQuery.filer-1.3.0/css/jquery.filer.css" rel="stylesheet">
	<link href="resources/jQuery.filer-1.3.0/css/themes/jquery.filer-dragdropbox-theme.css" rel="stylesheet">
	<link href="resources/alerts/alertify.core.css" rel="stylesheet">
  <link href="resources/alerts/alertify.default.css" rel="stylesheet">
  <link href="resources/css/loadingback.css" rel="stylesheet">

  <!-- <link href="resources/css/hovereffect.css" rel="stylesheet" type="text/css"/> -->

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<style>
.droptext{
background-color: #7CC142;
height:120px !important;
padding:0; margin:0;
}


</style>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="/otsieasy" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><img src="resources/templatenew/dist/img/logo.png" height="40px" width="40px" class="img-circle" alt="User Image"></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg pull-left"><img src="resources/images/easyicon.png" height="40px" width="40px" class="img-circle" alt="EASy"><b>EAS</b>y</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          
          <!-- /.messages-menu -->

          <!-- Notifications Menu -->
          
          <!-- Tasks Menu -->
          
          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src="resources/images/user.png" class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <span class="hidden-xs">${sessionScope.usersession.name}</span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src="resources/images/user.png" class="img-circle" alt="User Image">

                <p>
                  ${sessionScope.usersession.name}
                  <small>@ ${sessionScope.usersession.username}</small>
                </p>
              </li>
              <!-- Menu Body -->
              
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="/otsieasy/userdetails" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="/otsieasy/logout" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-history"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="resources/images/user.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p> ${sessionScope.usersession.name} </p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- search form (Optional) -->
      <%-- <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form> --%>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu">
        <li class="header">MENU</li>
        <!-- Optionally, you can add icons to the links -->
        <li><a href="/otsieasy"><i class="fa fa-home"></i> <span>Home</span></a></li>
        <!-- <li><a href="#"><i class="fa fa-link"></i> <span>Data Source</span></a></li> -->
        <li class="active treeview">
          <a href="#"><i class="fa fa-link"></i> <span>Data Source</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
           <li><a href="/otsieasy/flatfile"><i class="fa fa-file-excel-o" aria-hidden="true"></i> Flat File</a></li>
            <li><a href="/otsieasy/databaseconf"><i class="fa fa-database" aria-hidden="true"></i> Database</a></li>
            <li><a href="/otsieasy/apiconf"><i class="fa fa-rss-square" aria-hidden="true"></i> Api</a></li>
          </ul>
        </li>
        <li><a href="/otsieasy/selectindex"><i class="fa fa-paint-brush"></i> <span>Visualize</span></a></li>
      
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <!-- <h1>
        Choose Datasource
        <small>s</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Datasource</a></li>
        <li class="active">Homepage</li>
      </ol> -->
    </section>

    <!-- Main content -->
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
     
      <form id="ffform" role="form" action="multiplecsv" method="post" enctype="multipart/form-data">
       <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
      <div class="col-md-6 col-xs-6 col-md-offset-3"  >
        
								<input id="flatfiles"  name="file[]" ondrag="getInputForm()" ondragexit="getInputForm()" onchange="showInputFileds()" multiple="multiple" required="required" type="file">
							
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
							
		
		
		<!-- <div class="row">
      <div class="col-md-12 col-xs-12">
      <div class="row">
      
      </div>
      </div>
      </div> -->
         
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
    
        
        <!-- /.modal -->
      
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
   <!--  <div class="pull-right hidden-xs">
      Anything you want
    </div> -->
    <!-- Default to the left -->
    <strong>Copyright &copy; 2016 <a href="http://www.otsi-usa.com">Object Technology Solutions Inc</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <!-- <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li> -->
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane active" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
       <c:forEach var="rechistory" items="${sessionScope.recentActivity}" varStatus="status">
     
          <li>
            <a href="javascript::;">
              <i class="menu-icon fa fa-history bg-red"></i>

              <div class="menu-info">
               <h4 class="control-sidebar-subheading">${rechistory }</h4>
              </div>
            </a>
          </li>
           </c:forEach>
        </ul>
        <!-- /.control-sidebar-menu -->

        <!-- <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript::;">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="pull-right-container">
                  <span class="label label-danger pull-right">70%</span>
                </span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
        </ul> -->
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <%-- <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3  class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->
        </form>
      </div> --%>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.2.3 -->
<script src="resources/templatenew/plugins/jQuery/jquery-2.2.3.min.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <script src="resources/jQuery.filer-1.3.0/js/jquery.filer.min.js" type="text/javascript"></script>
	<script src="resources/jQuery.filer-1.3.0/examples/dragdrop/js/custom.js" type="text/javascript"></script>
<!-- Bootstrap 3.3.6 -->
<script src="resources/templatenew/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/js/bootstrap-notify.min.js"></script>
<script src="resources/templatenew/plugins/select2/select2.full.min.js"></script>
<!-- AdminLTE App -->

<script src="resources/templatenew/dist/js/app.min.js"></script>
<script src="resources/templatenew/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="resources/templatenew/plugins/fastclick/fastclick.min.js"></script>
<script src="resources/alerts/alertify.js"></script>








<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
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
	$body.addClass("loading");
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
	                 +'<input required="required" onchange="searchTable(this);" type="text" value="" name="tablename[]" class="text-lowercase form-control" placeholder="Save As">'
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


<c:if test="${fn:length(flatfilefail)>0}">
<script type="text/javascript">
var idx="${flatfilefail}";
  // var fullidx=idx.substring(0,62);
alertify.alert(idx);
</script>
</c:if>
<c:if test="${fn:length(flatfilesuccess)>0}">
<script type="text/javascript">
var idx="${flatfilesuccess}";
  // var fullidx=idx.substring(0,62);
alertify.success(idx);
</script>
</c:if>

     
     
</body>
</html>
