# enable multi-threading (requires AviSynthMT)
SetMTmode(5,0)

ahead10  = DirectShowSource("test.avi").reduceBy2().Trim(100,0)
ahead20 = DirectShowSource("test.avi").reduceBy2().Trim(200,0)
source = DirectShowSource("test.avi")
mosaic = stackvertical(ahead10, ahead20)
final = stackhorizontal(source, mosaic)
return(final)