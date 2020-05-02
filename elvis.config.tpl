[{elvis,
  [{config,
    [#{dirs    => ["src", "test"],
       filter  => "*.erl",
       ruleset => erl_files
      },
     #{dirs    => ["."],
       filter  => "Makefile",
       ruleset => makefiles
      },
     #{dirs    => ["."],
       filter  => "rebar.config",
       ruleset => rebar_config
      },
     #{dirs    => ["."],
       filter  => "elvis.config",
       ruleset => elvis_config
      }]
   }]
 }].
