Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5F846B8
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 10:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653648299;
	h=To:Subject:From:Message-Id:Date;
	bh=SGfGsiKR4X9W6kHqvvLKjRHuo8GH7MmQIocpU91a8NQ=;
	b=emk1tAnW7VSyI/uG3WolF7+dAkBYbSJsXty2ivQzjuoaaPHMlEvfSeaK/CHJFYvF
	/D7xYpFlGf9m5dB9VTZpKluUUdIKy/QOQFxCkh//KOGmdX/s1w1nClzki3QkrimAmMl
	9/X8HfpQCXSb+GJL0AjDqUJIVmFd+m3cyKcWLldw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653648299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SGfGsiKR4X9W6kHqvvLKjRHuo8GH7MmQIocpU91a8NQ=;
	b=Uy2zIDFzr0KfD2d6xwzWP9HaYZgP/x1JY5AwTW+NxdJjHGWepMfoKUmfR1petO/6
	1+7BYLImJF4Txf93fQv+82wO7Gm7gbA9aaQgH4/CjzmsvgLjWXfx8ZOClkuweGQDpKs
	83LwVhe8zYgLH4iHpd4+WY0p2Y3UlxWwwULOGv5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181051e9505-f8a9a637-f7b2-4aa8-a160-535ac7947f07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6140ee7a1317b970ff18b410cbf91e567fe8c918c64e6379d066da4676d858f1
Date: Fri, 27 May 2022 10:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653648299
