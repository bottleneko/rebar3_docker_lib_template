version: 2.1
jobs:
  test:
    docker:
      - image: circleci/erlang:{{erlang_version}}
    steps:
      - checkout
      - run: mkdir -p _build/test/test-results/{eunit,ct}
      - run: rebar3 do eunit, ct, cover -v
      - run: rebar3 as test coveralls send
  dialyzer:
    docker:
      - image: circleci/erlang:{{erlang_version}}
    steps:
      - checkout
      - run: rebar3 dialyzer
  xref:
    docker:
      - image: circleci/erlang:{{erlang_version}}
    steps:
      - checkout
      - run: rebar3 xref
  elvis:
    docker:
      - image: circleci/erlang:{{erlang_version}}
    steps:
      - checkout
      - run: rebar3 lint
workflows:
  version: 2
  ci:
    jobs:
      - test
      - dialyzer
      - xref
      - elvis
