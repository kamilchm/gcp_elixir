Path.join(["rel", "plugins", "*.exs"])
|> Path.wildcard()
|> Enum.map(&Code.eval_file(&1))

use Mix.Releases.Config,
    default_release: :default,
    default_environment: Mix.env()

environment :dev do
  set dev_mode: true
  set include_erts: false
  set cookie: :"4,Cl*N/^_Q0KwXT/f?kQ3Q<SdCWy,&dtWGOK,q]q.HxZ7l*Z441lhoOz)TdBg%D="
end

environment :prod do
  set include_erts: true
  set include_src: false
  set cookie: :"[*f_A=IvzdPh^1=,?q5I{6%._rCkc!@=c@vj2E,Z,}$)6Zm(&R_o[Nkb$.1uyUJe"
end

release :gcp_elixir do
  set version: current_version(:gcp_elixir)
  set applications: [ :runtime_tools ]
end

