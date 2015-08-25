Types = require './types'

Traits =
  node:
    id:                Types.nullable(Types.string())
    classes:           Types.classes()

  entity:
    active:            Types.bool(true)

  object:
    visible:           Types.bool(true)

  unit:
    scale:             Types.nullable(Types.number())
    fov:               Types.nullable(Types.number())
    focus:             Types.number(1)

  span:
    range:             Types.nullable(Types.vec2(-1, 1))
  view:
    range:             Types.array(Types.vec2(-1, 1), 4)
  view3:
    position:          Types.vec3()
    quaternion:        Types.quat()
    rotation:          Types.vec3()
    scale:             Types.vec3(1, 1, 1)
    eulerOrder:        Types.swizzle('xyz')
  view4:
    position:          Types.vec4()
    scale:             Types.vec4(1, 1, 1, 1)

  layer:
    depth:             Types.number(1)
    fit:               Types.fit('y')
    origin:            Types.vec2(0, 0)
    unit:              Types.mapping()

  vertex:
    pass:              Types.vertexPass()
    shader:            Types.select()

  transform3:
    pass:              Types.vertexPass()
    position:          Types.vec3()
    quaternion:        Types.quat()
    rotation:          Types.vec3()
    eulerOrder:        Types.swizzle('xyz')
    scale:             Types.vec3(1, 1, 1)
    matrix:            Types.mat4(1, 0, 0, 0,
                                  0, 1, 0, 0,
                                  0, 0, 1, 0,
                                  0, 0, 0, 1)
  transform4:
    pass:              Types.vertexPass()
    position:          Types.vec4()
    scale:             Types.vec4(1, 1, 1, 1)
    matrix:            Types.mat4(1, 0, 0, 0,
                                  0, 1, 0, 0,
                                  0, 0, 1, 0,
                                  0, 0, 0, 1)

  camera:
    position:          Types.vec3()
    quaternion:        Types.nullable(Types.quat())
    rotation:          Types.nullable(Types.vec3())
    lookAt:            Types.nullable(Types.vec3())
    eulerOrder:        Types.swizzle('xyz')
  ###
  perspective:
    fov:               Types.number(60)
    aspect:            Types.nullable(Types.number(1))
  ortho:
    range:             Types.array(Types.vec2(-1, 1), 2)
  ###

  polar:
    bend:              Types.number(1)
    helix:             Types.number(0)
  spherical:
    bend:              Types.number(1)
  stereographic:
    bend:              Types.number(1)

  interval:
    axis:              Types.axis()
  area:
    axes:              Types.swizzle([1, 2], 2)
  volume:
    axes:              Types.swizzle([1, 2, 3], 3)

  scale:
    divide:            Types.number(10)
    unit:              Types.number(1)
    base:              Types.number(10)
    mode:              Types.scale()
    start:             Types.bool(true)
    end:               Types.bool(true)
    zero:              Types.bool(true)
    bias:              Types.number(0)

  grid:
    lineX:             Types.bool(true)
    lineY:             Types.bool(true)
    crossed:           Types.bool(false)
  axis:
    detail:            Types.int(1)
    origin:            Types.vec4()
    crossed:           Types.bool(false)

  data:
    data:              Types.nullable(Types.object())
    expr:              Types.nullable(Types.func())
    bind:              Types.nullable(Types.func())
    live:              Types.bool(true)
  buffer:
    channels:          Types.int(3)
    items:             Types.int(1)
    fps:               Types.nullable(Types.int(60), true)
    hurry:             Types.int(5)
  sampler:
    centered:          Types.bool(false)
    padding:           Types.number(0)
  array:
    length:            Types.nullable(Types.int(1))
    bufferLength:      Types.int(1)
    history:           Types.int(1)
  matrix:
    width:             Types.nullable(Types.int(1))
    height:            Types.nullable(Types.int(1))
    history:           Types.int(1)
    bufferWidth:       Types.int(1)
    bufferHeight:      Types.int(1)
  voxel:
    width:             Types.nullable(Types.int(1))
    height:            Types.nullable(Types.int(1))
    depth:             Types.nullable(Types.int(1))
    bufferWidth:       Types.int(1)
    bufferHeight:      Types.int(1)
    bufferDepth:       Types.int(1)

  resolve:
    expr:              Types.nullable(Types.func())
    items:             Types.int(1)

  style:
    opacity:           Types.number(1)
    color:             Types.color()
    blending:          Types.blending()
    zWrite:            Types.bool(true)
    zTest:             Types.bool(true)
    zIndex:            Types.absolute(Types.round())
    zBias:             Types.number(0)
    zOrder:            Types.nullable(Types.int())

  geometry:
    points:            Types.select()
    colors:            Types.nullable(Types.select())
  point:
    size:              Types.number(4)
    shape:             Types.shape()
    fill:              Types.bool(true)
    depth:             Types.number(1)
  line:
    width:             Types.number(2)
    depth:             Types.number(1)
    stroke:            Types.stroke()
    proximity:         Types.nullable(Types.number(Infinity))
  mesh:
    fill:              Types.bool(true)
    shaded:            Types.bool(true)
  strip:
    outline:           Types.bool(false)
  face:
    outline:           Types.bool(false)
  arrow:
    size:              Types.number(3)
    start:             Types.bool(false)
    end:               Types.bool(false)
  ticks:
    normal:            Types.vec3(0, 0, 1)
    size:              Types.number(10)
    epsilon:           Types.number(0.001)
  attach:
    offset:            Types.vec2(0, -20)
    snap:              Types.bool(false)
    depth:             Types.number(0)

  format:
    digits:            Types.nullable(Types.number(3))
    data:              Types.nullable(Types.object())
    expr:              Types.nullable(Types.func())
    live:              Types.bool(true)
  text:
    font:              Types.font('sans-serif')
    style:             Types.string()
    variant:           Types.string()
    weight:            Types.string()
    detail:            Types.number(24)
    expand:            Types.number(5)
  label:
    text:              Types.select()
    size:              Types.number(16)
    outline:           Types.number(2)
    expand:            Types.number(0)
    background:        Types.color(1, 1, 1)

  overlay:
    opacity:           Types.number(1)
    zIndex:            Types.absolute(Types.round(0))
  dom:
    points:            Types.select()
    html:              Types.select()
    size:              Types.number(16)
    outline:           Types.number(2)
    zoom:              Types.number(1)
    color:             Types.nullable(Types.color())
    attributes:        Types.nullable(Types.object())
    pointerEvents:     Types.bool(false)

  texture:
    minFilter:         Types.filter('nearest')
    magFilter:         Types.filter('nearest')
    type:              Types.type('float')

  shader:
    language:          Types.string('glsl')
    code:              Types.string()
    uniforms:          Types.nullable(Types.object())

  operator:
    source:            Types.select()
  spread:
    unit:              Types.mapping()
    items:             Types.nullable(Types.vec4())
    width:             Types.nullable(Types.vec4())
    height:            Types.nullable(Types.vec4())
    depth:             Types.nullable(Types.vec4())
    alignItems:        Types.anchor()
    alignWidth:        Types.anchor()
    alignHeight:       Types.anchor()
    alignDepth:        Types.anchor()
  split:
    order:             Types.transpose('wxyz')
    axis:              Types.nullable(Types.axis())
    length:            Types.int(1)
    overlap:           Types.int(0)
  join:
    order:             Types.transpose('wxyz')
    axis:              Types.nullable(Types.axis())
    overlap:           Types.int(0)
  swizzle:
    order:             Types.swizzle()
  transpose:
    order:             Types.transpose()
  clip:
    items:             Types.vec2(1)
    width:             Types.vec2(1)
    height:            Types.vec2(1)
    depth:             Types.vec2(1)
  repeat:
    items:             Types.number(1)
    width:             Types.number(1)
    height:            Types.number(1)
    depth:             Types.number(1)
  slice:
    items:             Types.nullable(Types.vec2())
    width:             Types.nullable(Types.vec2())
    height:            Types.nullable(Types.vec2())
    depth:             Types.nullable(Types.vec2())
  lerp:
    items:             Types.nullable(Types.int())
    width:             Types.nullable(Types.int())
    height:            Types.nullable(Types.int())
    depth:             Types.nullable(Types.int())
  resample:
    indices:           Types.number(4)
    channels:          Types.number(4)
    map:               Types.mapping()
    unit:              Types.mapping('absolute')
    shader:            Types.select()
    items:             Types.nullable(Types.int())
    width:             Types.nullable(Types.int())
    height:            Types.nullable(Types.int())
    depth:             Types.nullable(Types.int())
  readback:
    indexed:           Types.bool()

  root:
    camera:            Types.select('[camera]')
    speed:             Types.number(1)

  rtt:
    width:             Types.nullable(Types.int())
    height:            Types.nullable(Types.int())
    history:           Types.int(1)
  compose:
    alpha:             Types.bool(false)

  transition:
    stagger:           Types.vec4()
    enter:             Types.nullable(Types.number(1))
    exit:              Types.nullable(Types.number(1))
    from:              Types.nullable(Types.vec4())
    to:                Types.nullable(Types.vec4())
    pass:              Types.vertexPass('data')
    delay:             Types.number(0)
    delayEnter:        Types.nullable(Types.number(0))
    delayExit:         Types.nullable(Types.number(0))
    duration:          Types.number(.3)
    durationEnter:     Types.nullable(Types.number(0))
    durationExit:      Types.nullable(Types.number(0))
  slide:
    steps:             Types.number(1)
    enter:             Types.nullable(Types.number(1))
    exit:              Types.nullable(Types.number(1))
    enters:            Types.bool(true)
    exits:             Types.bool(true)
    order:             Types.nullable(Types.int(0))
    stay:              Types.int(1)
  present:
    index:             Types.int(1)
    directed:          Types.bool(true)
    length:            Types.number(0)
  track:
    target:            Types.select('<')
    expr:              Types.nullable(Types.func())
    script:            Types.nullable(Types.object())
    seek:              Types.nullable(Types.number(0))
    ease:              Types.ease('cosine')
  steps:
    playback:          Types.ease('linear')
    stops:             Types.nullable(Types.array(Types.number()))
    delay:             Types.number(0)
    duration:          Types.number(.3)
    pace:              Types.number(0)
    speed:             Types.number(1)
    rewind:            Types.number(3)
    skip:              Types.bool(true)
    trigger:           Types.nullable(Types.number(1), true)
    realTime:          Types.bool(false)
  clock:
    delay:             Types.number(0)
    pace:              Types.number(1)
    speed:             Types.number(1)
    start:             Types.number(0)
    end:               Types.number(Infinity)
    trigger:           Types.nullable(Types.number(1), true)
    realTime:          Types.bool(false)

module.exports = Traits