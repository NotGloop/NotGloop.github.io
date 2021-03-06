{include file='header.tpl'}
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    {include file='navbar.tpl'}
    {include file='sidebar.tpl'}
	
	<div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">{$RULES}</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{$PANEL_INDEX}">{$DASHBOARD}</a></li>
                            <li class="breadcrumb-item active">{$RULES}</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
		
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                {if isset($NEW_UPDATE)}
                {if $NEW_UPDATE_URGENT eq true}
                <div class="alert alert-danger">
                    {else}
                    <div class="alert alert-primary alert-dismissible" id="updateAlert">
                        <button type="button" class="close" id="closeUpdate" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    {/if}
                    {$NEW_UPDATE}
                    <br />
                    <a href="{$UPDATE_LINK}" class="btn btn-primary" style="text-decoration:none">{$UPDATE}</a>
                    <hr />
                    {$CURRENT_VERSION}<br />
                    {$NEW_VERSION}
                </div>
                {/if}
				
                <div class="card">
                    <div class="card-body">
                        <h5 style="display:inline">{$EDIT_ENTRY}</h5>
                        <div class="float-md-right">
							<a href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
                        </div>
                        <hr />
						
                        {if isset($ERRORS) && count($ERRORS)}
                            <div class="alert alert-danger alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h5><i class="icon fas fa-exclamation-triangle"></i> {$ERRORS_TITLE}</h5>
                                <ul>
                                    {foreach from=$ERRORS item=error}
                                        <li>{$error}</li>
                                    {/foreach}
                                </ul>
                            </div>
                        {/if}
						
						<form action="" method="post">
							<div class="form-group">
								<label for="InputEntryNumber">{$RULES_ENTRY_NUMBER}</label>
								<input type="text" id="InputEntryNumber" placeholder="{$RULES_ENTRY_NUMBER}" name="rules_entry_number" class="form-control" value="{$RULES_ENTRY_NUMBER_VALUE}">
							</div>
							<div class="form-group">
								<label for="InputEntryRule">{$RULES_ENTRY_RULE}</label>
								<input type="text" id="InputEntryRule" placeholder="{$RULES_ENTRY_RULE}" name="rules_entry_rule" class="form-control" value="{$RULES_ENTRY_RULE_VALUE}">
							</div>
							<div class="form-group">
								<label for="InputEntryPunishment">{$RULES_ENTRY_PUNISHMENT}</label>
								<input type="text" id="InputEntryPunishment" placeholder="{$RULES_ENTRY_PUNISHMENT}" name="rules_entry_punishment" class="form-control" value="{$RULES_ENTRY_PUNISHMENT_VALUE}">
							</div>
                            <div class="form-group">
                                <input type="hidden" name="token" value="{$TOKEN}">
                                <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                            </div>
						</form>
					</div>
				</div>
					
            </div>
        </section>
	</div>
	
    {include file='footer.tpl'}

</div>
<!-- ./wrapper -->

{include file='scripts.tpl'}

</body>
</html>