def splitter3(list, seperator='\\'):
    ws = [splitter2(str, seperator='\\') for i, str in enumerate(list)]
    return ws