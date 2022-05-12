Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203A8160
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 06:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652338559;
	h=To:Subject:From:Message-Id:Date;
	bh=PczzHpWCiiBu4B2cyIZR750KGZgqx11cvKMmxUgYJzY=;
	b=OCoa0MnNftkI7sbrKIClBrRBUaIGF2fS0oIHUZO+aoSBxX1iboOHGBS7kjGz8dlL
	IhceHBQ/WnzQmJzXvFLomKgVlKnH4X8mi3vHvkdmvVZn+0vi11bxBK9t0k3ANar3Q9s
	+JrsWar4Tgqg7qShohJVF3jt6zIQ27iy/oqbjKAo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652338559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PczzHpWCiiBu4B2cyIZR750KGZgqx11cvKMmxUgYJzY=;
	b=P5qz7d7bvAgrJ8KeibTsWcKkzKoD+/HgG4VWGAatlpe8BD1Q02LVO+hy//TOoo8I
	r2DytEd942ZWxZTrdJzCZOkjcjCusibxbTGAobDe04uYapLuPoGMdq/vLn6JuOqZoB4
	C+Go5SPXa1Uu0Gpn5JFFCql1oQYqBcKj3ZBdtjZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b70d894e-c06c9321-3855-4f83-b2a7-1d091571ed16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 008c905998b71e2a7da8f0820607552b9ab1596f98da9e1ae8a9f15b5109fc8b
Date: Thu, 12 May 2022 06:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652338559
