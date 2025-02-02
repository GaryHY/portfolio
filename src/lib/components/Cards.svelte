<script lang="ts">
    import Card from "$lib/components/Card.svelte";

    let active: boolean = $state(false);
    let activeCardIndex: number = $state(-1);
    function setActiveState(index: number) {
        active = index !== -1;
        activeCardIndex = index;
    }

    type Props = {
        title: string;
        description: string;
    };
    let { cards }: { cards: Props[] } = $props();
</script>

<div class="cards grid container__small" class:only-one={cards.length === 1}>
    {#each cards as card, cardIndex}
        <Card
            isActive={active && activeCardIndex !== cardIndex}
            activeFn={() => setActiveState(cardIndex)}
            inactiveFn={() => setActiveState(-1)}
            title={card.title}
            description={card.description}
        />
    {/each}
</div>

<style>
    .cards {
        grid-template-columns: repeat(2, 1fr);
        grid-auto-flow: row;
        margin-inline: auto;
    }
    .only-one {
        grid-template-columns: 1fr;
        max-width: 42rem;
    }
</style>
