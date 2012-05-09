function! s:twipass(name)
  let res = webapi#http#post("http://twipass.wiwa.jp/ctrl/get/twipass", {"name": a:name})
  echo webapi#json#decode(res.content).text
endfunction
command! -nargs=1 TwiPass call s:twipass(<q-args>)
