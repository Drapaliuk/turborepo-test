import { describe, expect, it } from 'vitest';



describe('Generators', () => {
    it('Test genrator', async () => {
        await new Promise(res => setTimeout(res, 4000))
        expect(1).equal(1)
    })
});
