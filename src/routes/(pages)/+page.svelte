<script lang="ts">
    import Cards from "$lib/components/Cards.svelte";

    type Props = {
        title: string;
        description: string;
    };
    let cards: Props[] = [
        {
            title: "Leviosa",
            description:
                "An activity management software for a company organizing wellness events",
        },
        {
            title: "Investigo",
            description:
                "An activity management software for a private detective",
        },
        {
            title: "Investigo",
            description:
                "A highly customizable content aggregator web application",
        },
    ];
</script>

<Cards {cards} />
