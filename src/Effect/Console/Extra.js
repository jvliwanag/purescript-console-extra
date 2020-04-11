exports._log = function(args) {
  return function () {
    console.log.apply(undefined, args);
  };
};

exports._warn = function(args) {
  return function () {
    console.warn.apply(undefined, args);
  };
};

exports._error = function(args) {
  return function () {
    console.error.apply(undefined, args);
  };
};

exports._info = function(args) {
  return function () {
    console.info.apply(undefined, args);
  };
};

exports.table = function(a) {
  return function () {
    console.table(a);
  };
};
