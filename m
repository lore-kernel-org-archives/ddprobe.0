Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D807A7E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 01:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655343359;
	h=To:Subject:From:Message-Id:Date;
	bh=BQChMWohmC1KpNGh2VUq4xXfcVZNXzVuD3S7tbgw8/Y=;
	b=H6HlRV5DB0ehbrzOq78EHESRfZsPJLzL33Ky0DkfKRZJMq5cS2PBj95fddfdeHUv
	6bulXfIeEMzgkvGunHt1q/wYEwqZZvrEfwaDmGCtgCs9sPE8WHxdSbzxrRLoO6b1T0k
	D5qJJDvhRcJ0N+iOHESDCH9aNrRjbwFx2ZqL3hSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655343359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BQChMWohmC1KpNGh2VUq4xXfcVZNXzVuD3S7tbgw8/Y=;
	b=MY7RKbJeFuaGxxQ39s98Wsweg6kIZNL3ng3XlJvEIuRkj2xcwsXcSFsnOAj2s4KL
	6Woc0qnTTD/NzGOJoYyEzUqlJPt6IQmH/k/Ro+SJn9gP8XM5pYKI3MFzIrCHW6OcAt6
	qbXsXcaTovDGrVJqIZcmVQJFamwh5BzSO8JxJfU0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816a27252f-70d45902-79fe-4678-a7d7-2eb6e93693e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f2dedfb3a89d24c6716733d8a402958e83f1dd4f1c48ce3e1db9b906f8995c6
Date: Thu, 16 Jun 2022 01:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655343359
