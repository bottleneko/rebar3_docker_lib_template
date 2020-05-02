{erl_opts, [debug_info]}.
{shell, [{apps, [{{name}}]}]}.

{project_plugins, [{rebar3_lint, "~> 0.1"}, coveralls]}.

{profiles,
 [{test,
   [{erl_opts, [debug_info, warnings_as_errors]},
    {sys_config, ["config/test.sys.config"]}
   ]}
 ]}.

{cover_enabled, true}.
{cover_export_enabled, true}.

{eunit_opts, [verbose]}.

{ct_readable, true}.

{coveralls_coverdata, "_build/test/cover/*.coverdata"}.
{coveralls_service_name, "circle-ci"}.
