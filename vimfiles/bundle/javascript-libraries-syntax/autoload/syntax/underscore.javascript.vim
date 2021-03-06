" Vim syntax file
" Language:    underscore.js for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2015/01/27
" Version:     1.7.0
" URL:         http://underscorejs.org/
" LoDash:      3.0.0
" URL:         http://lodash.com/

syntax keyword javascriptunderscore _ containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution
" syntax match   javascriptunderscoredot contained /\./ nextgroup=@javascript_Functions
" syntax match   javascriptunderscoredot contained /([^)]*)\./ nextgroup=@javascript_Functions

syntax cluster javascript_Functions contains=javascript_collections,javascript_strings,javascript_arrays,javascript_functions,javascript_objects,javascript_chaining,javascript_lodash

syntax match   javascript_collections contained /contains/
syntax keyword javascript_collections contained include
syntax keyword javascript_collections contained each map reduce reduceRight find filter where findWhere
syntax keyword javascript_collections contained reject every some invoke pluck max min sortBy
syntax keyword javascript_collections contained groupBy indexBy countBy shuffle toArray size
syntax keyword javascript_collections contained partition iteratee
" lodash 3.0.0
syntax keyword javascript_collections contained partition sortByAll includes callback
"
" lodash 3.0.0
syntax keyword javascript_strings contained camelCase capitalize deburr endsWith escapeRegExp
syntax keyword javascript_strings contained kebabCase pad padLeft padRight repeat snakeCase
syntax keyword javascript_strings contained startsWith trim trimLeft trimRight trunc words
"
syntax keyword javascript_arrays contained first initial last rest compact flatten without union
syntax keyword javascript_arrays contained intersection difference uniq zip object indextOf
syntax keyword javascript_arrays contained lastIndexOf sortedIndex range
" lodash 3.0.0
syntax keyword javascript_arrays contained chunk dropRight dropRightWhile dropWhile flattenDeep
syntax keyword javascript_arrays contained pullAt slice sortedLastIndex takeRight takeRightWhile
syntax keyword javascript_arrays contained takeWhile 
"
syntax keyword javascript_functions contained bind bindAll partial memoize delay throttle debounce
syntax keyword javascript_functions contained once after before wrap negate compose flow flowRight
" lodash 3.0.0
syntax keyword javascript_functions contained ary before curryRight negate rearg
syntax keyword javascript_functions contained backflow compose partial cancel
"

syntax keyword javascript_objects contained keys values pairs invert functions extend pick omit
syntax keyword javascript_objects contained defaults clone tap has isEqual isEmpty isElement isArray
syntax keyword javascript_objects contained isObject isArguments isFunction isString isNumber
syntax keyword javascript_objects contained isFinite isBoolean isDate isRegExp isNaN isNull 
syntax keyword javascript_objects contained isUndefined property matches
" lodash 3.0.0
syntax keyword javascript_objects contained keysIn valuesIn
"
syntax keyword javascript_utility contained noConflict identify times random mixin uniqueId
syntax keyword javascript_utility contained escape unescape result template iteratee noop
" lodash 3.0.0
syntax keyword javascript_utility contained attempt matches propertyOf constant now
"
syntax keyword javascript_chaining contained chain value thru

syntax keyword javascript_lodash contained at bindKey cloneDeep createCallback findIndex findKey
syntax keyword javascript_lodash contained forEach forIn forOwn isPlainObject merge parseInt partial
syntax keyword javascript_lodash contained partialRight runInContext support unzip where 
syntax keyword javascript_lodash contained capitalize match slice trim trimLeft trimRight
syntax keyword javascript_lodash contained constant mapValues now property xor
syntax keyword javascript_lodash contained create noop transform 
" lodash 3.0.0
syntax keyword javascript_lodash contained isError isMatch isNative isTypedArray toPlainObject
"


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_underscore_javascript_syntax_inits")
  if version < 508
    let did_underscore_javascript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink javascriptunderscore      Constant

  HiLink javascript_collections    PreProc
  HiLink javascript_strings        PreProc
  HiLink javascript_arrays         PreProc
  HiLink javascript_functions      PreProc
  HiLink javascript_objects        PreProc
  HiLink javascript_utility        PreProc
  HiLink javascript_chaining       PreProc
  HiLink javascript_lodash         PreProc


  delcommand HiLink
endif
