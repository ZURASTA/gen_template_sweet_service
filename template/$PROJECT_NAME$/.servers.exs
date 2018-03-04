<% MixTemplates.ignore_file_unless @blueprint %>
[
    { { :call, _, { :call, _, { :remote, _, { :atom, _, Access }, { :atom, _, :get } }, [{ :var, _, _ }, { :atom, _, :server }, { :atom, _, _ }] }, [{ :atom, _, name }] }, name }
]
