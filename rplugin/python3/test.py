import pynvim
@pynvim.plugin
class TestPlugin(object):
    def __init__(self, nvim):
        self.nvim = nvim

    @pynvim.function('TestFunction', sync=True)
    def testfunction(self, args):
        return 3

    @pynvim.command('TestCommand', nargs='*', range='')
    def testcommand(self, args, range):
        self.nvim.current.line = ('Command with args: {}, range: {}'
                .format(args, range))

    #@pynvim.autocmd('BufRead', pattern='*.go', eval='expand("<afile>")', sync=True)
    #def on_bufread(self, filename):
    #    #  self.nvim.out_write('testplugin is in ' + filename + '\n')
    #    buffer = self.nvim.current.buffer
    #    if len(buffer[:]) <= 1 and buffer[0] == '':
    #        buffer[0] = 'package ...'
    #    #  self.nvim.command("echom 'gogogo'")
