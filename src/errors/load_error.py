class LoadError(Exception):

    def __init__(self, message: str) -> None:
        super().__init__(message)
        self.error_type = 'Load Error'