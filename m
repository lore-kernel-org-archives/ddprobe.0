Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3602F39
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 19:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657048012;
	h=To:Subject:From:Message-Id:Date;
	bh=GT7AFnyCxHURnDZlZl3fZlponKxXkD05BPMont6LrKA=;
	b=GW80CctL1qIn+NVh9+xfEMMeYUcMkKsOHjZvO/oEU+/8H3AsRP6cEHWPD7Dj2tR9
	ijCh1a6ZEUAoWpUZ7D8Ub6PKNcBlqRWpy6qb1hhrfTRLZhYWVV8GLznL4fAmwGJJ15o
	uJKWMe6jc8afHTe21/Lq0fqowxDi6CBsEglkMM78=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657048012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GT7AFnyCxHURnDZlZl3fZlponKxXkD05BPMont6LrKA=;
	b=dg3IqK1+yQt3z7F2sbTVSWjrfZHUFgsh79auX9sc7qEM8qvLm9OeL9d1NMKS9lB/
	6UahuRto0LN8c5ivUt6ETdt08QnM/29MlgXPPvGPia2pNKEWKL8iCUgqO4PnRhTuClX
	EZgfstLeD36v/IxqxLpyPYere1sI+qDq5ootKN08=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cfc215f1-81b84679-a03b-4ebf-b5b5-12e492de6c6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ad12c7316bc1084e23eea51126f52b4e909082845fa0c28d145656c5402765f
Date: Tue, 5 Jul 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657048012
