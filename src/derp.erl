
-module(derp).





-export([

    gen_site/2,
      gen_site/3,
      gen_site/4

]).





gen_site(SrcPath, OutName) ->

    gen_site(SrcPath, OutName, <<"/">>).





gen_site(SrcPath, OutName, ServePrefix) ->

    { ok, Files } = file:list_dir(SrcPath),
    Files.





gen_site(SrcPath, OutName, ServePrefix, OutFile) ->

    % call gen_site/3, write the result to disk; duh

    todo.
