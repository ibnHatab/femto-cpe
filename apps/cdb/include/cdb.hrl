


-type tbl_ref() :: integer(). % FIXME: need type for uniq id
%% Current and copy-on-write tuple of instance index 
-type cdb_index() :: {integer(), tbl_ref(), tbl_ref()}.

-record(cdb_node,{
	  % mark branches effected by provisioning
	  flag = 'dirty' :: 'clean' | 'dirty',
	  % store child index - current and provisioned
	  index :: list(cdb_index()),
	  % list of notification subscribers
	  listener :: list({integer(), list(pid())})
	 }).

