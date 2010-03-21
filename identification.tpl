<div class="titrePage">
  <ul class="categoryActions">
    <li><a href="{$U_LOST_PASSWORD}" title="{'Forgot your password?'|@translate}">{'Forgot your password?'|@translate}</a> «</li>
    {if isset($U_REGISTER) }
    <li><a href="{$U_REGISTER}" title="{'Create a new account'|@translate}">{'Register'|@translate}</a> «</li>
    {/if}
    <li><a href="{$U_HOME}" title="{'Go through the gallery as a visitor'|@translate}">{'home'|@translate}</a></li>
  </ul>
  <h2>{'Identification'|@translate}</h2>
</div>
<div id="content">
  {if isset($errors) and count($errors)}
  <div class="errors">
    <ul>
      {foreach from=$errors item=error}
      <li>{$error}</li>
      {/foreach}
    </ul>
  </div>
  {/if}
  <form action="{$F_LOGIN_ACTION}" method="post" name="login_form">
    <fieldset>
      <legend>{'Connection settings'|@translate}</legend>
      <input type="hidden" name="redirect" value="{$U_REDIRECT}">
      <ul>
        <li>
          <div class="property">
            <label for="username">{'Username'|@translate}</label>
          </div>
          <input tabindex="1" class="login" type="text" name="username" id="username" size="25" maxlength="40" />
        </li>
        <li>
          <div class="property">
            <label for="password">{'Password'|@translate}</label>
          </div>
          <input tabindex="2" class="login" type="password" name="password" id="password" size="25" maxlength="25" />
        </li>
        {if $authorize_remembering }
        <li>
          <div class="property">
            <label for="remember_me">{'remember_me'|@translate}</label>
          </div>
          <input tabindex="3" type="checkbox" name="remember_me" id="remember_me" value="1">
        </li>
        {/if}
      </ul>
    </fieldset>
    <p><input class="submit" tabindex="4" type="submit" name="login" value="{'Submit'|@translate}"></p>
  </form>
  <script type="text/javascript">
    <!--
       document.login_form.username.focus();
       //-->
  </script>
</div> <!-- content -->