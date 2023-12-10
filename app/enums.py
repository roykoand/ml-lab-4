from enum import StrEnum, auto


class AutoName(StrEnum):
    def _generate_next_value_(name, start, count, last_values):
        return name


class RLModels(AutoName):
    PPO = auto()
