package grailsdatecreatedissue

class UpdateCacheJob {
    static triggers = {
      simple repeatInterval: 5000l // execute job once in 5 seconds
    }

    def updateCacheService; // inject;

    def execute() {
        // execute job
        updateCacheService.flushAll()
    }
}
