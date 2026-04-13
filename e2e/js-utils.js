// an aletrnative way to organize helper utilities can be found here https://docs.karatelabs.io/advanced/best-practices/#organizing-utility-functions
function fn() {
  return {
    getEnvVariable: function (variable) {
      var System = Java.type('java.lang.System');

      return System.getenv(variable);
    },
  }
}
