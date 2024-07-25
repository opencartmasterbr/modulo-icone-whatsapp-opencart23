<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-whatsmaster" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
	  
	<?php if($atual) { ?>
	<div class="alert alert-info"><i class="fa fa-exclamation-circle"></i> Existe uma nova versão do módulo <b><?php echo $module_name; ?></b> faça o download <a href="<?php echo $murl; ?>" target="_blank">AQUI</a> <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
	<?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
   <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-whatsmaster" class="form-horizontal">
	   <ul class="nav nav-tabs" id="tabs">
            <li><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
            <li class="active"><a href="#tab-help" data-toggle="tab"><?php echo $tab_help; ?></a></li>
          </ul>
	 <div class="tab-content">

    <div class="tab-pane" id="tab-general">  
	    <div class="form-group">
                <label class="col-sm-2 control-label" for="input-numero"><?php echo $entry_numero; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="whatsmaster_numero" value="<?php echo $whatsmaster_numero; ?>" placeholder="<?php echo $entry_numero; ?>" id="input-numero" class="form-control" />
                </div>
              </div>
	   <div class="form-group">
                <label class="col-sm-2 control-label" for="input-image"><?php echo $entry_image; ?></label>
                <div class="col-sm-10"><a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                  <input type="hidden" name="whatsmaster_image" value="<?php echo $whatsmaster_image; ?>" id="input-image" />
                </div>
              </div>
		<div class="form-group">
           <label class="col-sm-2 control-label" for="input-posicao"><?php echo $entry_posicao; ?></label>
            <div class="col-sm-5">
              
                <label class="radio-inline">
                <?php if ($whatsmaster_posicao) { ?>
                <input type="radio" name="whatsmaster_posicao" value="1" checked="checked" />
                <?php echo $text_left; ?>
                <?php } else { ?>
                <input type="radio" name="whatsmaster_posicao" value="1" />
                <?php echo $text_left; ?>
                <?php } ?>
              </label>
              <label class="radio-inline">
                <?php if (!$whatsmaster_posicao) { ?>
                <input type="radio" name="whatsmaster_posicao" value="0" checked="checked" />
                <?php echo $text_right; ?>
                <?php } else { ?>
                <input type="radio" name="whatsmaster_posicao" value="0" />
                <?php echo $text_right; ?>
                <?php } ?>
              </label>
              
            </div>
          </div>
		
		 <div class="form-group">
                <label class="col-sm-2 control-label" for="input-horizontal"><?php echo $entry_hor; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="whatsmaster_horizontal" value="<?php echo $whatsmaster_horizontal; ?>" placeholder="<?php echo $entry_hor; ?>" id="input-horizontal" class="form-control" />
                </div>
         </div>
		
		 <div class="form-group">
                <label class="col-sm-2 control-label" for="input-vertical"><?php echo $entry_ver; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="whatsmaster_vertical" value="<?php echo $whatsmaster_vertical; ?>" placeholder="<?php echo $entry_ver; ?>" id="input-vertical" class="form-control" />
                </div>
         </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-5">
              <select name="whatsmaster_status" id="input-status" class="form-control">
                <?php if ($whatsmaster_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
			 <br>
			  <p><?php echo $text_terms; ?> <a href="https://www.opencartmaster.com.br/<?php echo $text_l; ?>" target="_blank"><?php echo $text_t; ?></a></p>
            </div>
          </div> 
         </div>
           
       <div class="tab-pane active" id="tab-help">
      <p><?php echo $text_pix; ?></p>
    	 <fieldset>
       <legend><?php echo $text_h; ?></legend>
       <h4><i class="fa fa-code"></i> <?php echo $text_m; ?> <?php echo $module_name; ?> - <?php echo $text_v; ?> <?php echo $version; ?> </h4>
       <h4><i class="fa fa-envelope"></i> <a href="mailto:suporte@opencartmaster.com.br">suporte@opencartmaster.com.br</a></h4>
       <h4><i class="fa fa-whatsapp"></i> <a href="https://wa.me/551142542450" target="_blank">11 4254-2450</a></h4>
       <h4><i class="fa fa-globe"></i> https://www.opencartmaster.com.br</h4>
	   <p><?php echo $text_support; ?></p>
       </fieldset>

	   </div>
		 
		</div>
        </form>
      </div>
    </div>
  </div>
</div>

<?php echo $footer; ?>