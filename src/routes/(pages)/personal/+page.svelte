<script lang="ts">
    import Cards from "$lib/components/Cards.svelte";
    let cards = [
        {
            title: "Cocorigo",
            description: "A go like programming language",
        },
    ];
</script>

<Cards {cards} />

<style>
</style>
