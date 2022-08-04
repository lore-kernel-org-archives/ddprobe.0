Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357BF5387
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659640252;
	h=To:Subject:From:Message-Id:Date;
	bh=GXSS1wl6fO9FCG4taQuiWEQIX/+dk8Ceqd1UlMg3IHI=;
	b=C8/fvzbnWbjXexsJufBg0aTXwRQJj7/8FzCqKRNM9UDUc/6mcMevNpTjsJ55pXB5
	HXGJoqmkiSTtOUNkIr12fBJergvhOH22lw2A+1PlPcU2GTNStaneVpWm3okn5eJ+IOl
	5JifJ6DEn6d2LC78pb5a/55VJmsfGYrVjLEfH7Aw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659640252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GXSS1wl6fO9FCG4taQuiWEQIX/+dk8Ceqd1UlMg3IHI=;
	b=EjDxtsh3YruJOvdgVbAyLTb8ZohgLom+z897+NxuGsAJwYsuRgQFdD9LdHHBnooT
	/Y/wzUPJi4sbOorWfNBOLAKCzwNyUZKoHv9jn2g0NZDrEzCo5l90BBb/SodaRyV0z5C
	Q5j7elbf27OqENnwnLr0mVpuXf6VdyuUoJIlggsM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826a448861-8ff0d9ba-209e-4eb0-ab33-3ff723fad2d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12b6dfd5af52c583c7a682dc74525dd741c0389f06b3d4e5af2595d1fbaf0d5e
Date: Thu, 4 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659640252
