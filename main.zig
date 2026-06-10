const std = @import("std");

var prng: std.Random.DefaultPrng = .init(blk: {
    var seed: u64 = undefined;
    try std.posix.getrandom(std.mem.asBytes(&seed));
    break :blk seed;
});
const rand = prng.random();

pub fn main() !void {
    std.debug.print("Hello World!\n", .{});
}

fn sortArray() {
    std.debug.print("Coming soon", .{})
}

test "Array sorting" {
    const randomArray: u16 = comptime std.Random.array(rand, u16)
    sortArray()
    try std.testing.expect(true);
}