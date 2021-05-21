{include file="header.tpl"}

<table cellspacing="0" cellpadding="0" width="100%" align="center" class="list">
  {if $conf.userlogreq == 1 && $user == ''}
    <tr>
      <td align="center">
      {$lang.msg_login}
      </td>
    </tr>
  {else}
    {if $list == ''}
      <tr>
        <td align="center">
          {$lang.err_noentries}
        </td>
      </tr>
    {else}
      <thead>
        <tr>
          <th></th><th>{$lang.name}</th><th>{$lang.organization}</th><th>{$lang.phone}</th><th>{$lang.mobile}</th><th>{$lang.mail}</th>
        </tr>
      </thead>
      {* $list is a concatenation of multiple list_entry.tpl *}
      {$list}
    {/if}
  {/if}
</table>

{include file="footer.tpl"}
