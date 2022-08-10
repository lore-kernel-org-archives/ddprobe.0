Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED0E02F3E
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660172452;
	h=To:Subject:From:Message-Id:Date;
	bh=Czo7whyN9fX0pAcdT/K0pIZ/lLGmYnEAO8dtgYFhWh8=;
	b=jrWVA285VpfxfMX3uKhl/XvKGUskOWkwT9ZD5J5MUYgJibfgt1QFXbwZdWCT0RHQ
	h2M60gpHttbPYSrw8OHr1F5bPUkLGNF9GjANksXVa35yH83bmCZcOASXbhqECwgKgrA
	mqS8s6YGPAp7VJKFkOOTJsRHuOpYW3/tnWO50MpY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660172452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Czo7whyN9fX0pAcdT/K0pIZ/lLGmYnEAO8dtgYFhWh8=;
	b=KOzA4rCV/sviPWX60g5j+J95wHvpJA1b1ZJ6CvkZ2ermeM/+KUkF2KwyhRiELZgQ
	oELLFHqNhNeoN1W5w7aObw2ygoIF8UBIyP8h2gRm1EFX4yhPfJwwzoZ1CoW9/P1ri2Q
	uoaEH0pa6gNKHe2y6ElZqIxzQmhQixX/l12RDk7g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018289fd431f-ce44018c-57e7-4b9f-b08c-b3002e7a8031-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f83b81a98d7eb377d46a7dbfad701ba35263f8837c9abcdff6d1b8495cbd0b8
Date: Wed, 10 Aug 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660172452
