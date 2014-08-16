
-module(derp).





-export([

    default_options/0,

    gen_site/2,
      gen_site/3

]).





default_options() ->

    [   { path_prefix,    <<"/">> },
        { output_file,    false   },
        { recursive_read, true    }
    ].





gen_site(SrcPath, OutName) ->

    gen_site(SrcPath, OutName, []).





gen_site(SrcPath, _OutName, UserOptions) ->

    Options = sc:merge_settings(UserOptions, default_options()),

    { ok, Files } = file:list_dir(SrcPath),
    { Files, Options }.
