{foreach item=node from=$tree}
 {assign var="depth" value=$node->getDepth()}
 {""|indent:$depth*2:"&nbsp;"}
 <a href="{link_to action="toggleNode" tree=$treeIdentifier treeid=$node->id}">+</a>
 <!-- <a href="javascript: displayList({$node->id}, 'Project');">{$node->title}</a> -->
 <a href="{link_to action="list" module="Project" nodeId=$node->id}">{$node->title}</a>
 <br />
{/foreach}
<br />
{""|indent:2:"&nbsp;"}
<a href="{link_to action="list" module="History" page="0"}">{"History"|translate}</a>

