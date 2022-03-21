Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86F6E7A
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647840984;
	h=To:Subject:From:Message-Id:Date;
	bh=V9/4bgJFoXAvxnRR6Hea0gC+78wK8K7GX5fjBxRHGyM=;
	b=BuuYkcrXpB2zl8bweAgm5U7VgRRyoT8GUDi476wRWPyzOh6DUm7s0RdAw+Gf0P90
	q0UtkxT6BaFUHIWNPfLvjxp6FNtr1NI83nkJjYiG31WM0aL/BpzapkLdX5bucjrOHPx
	e+0frF0vnvWbrkyNgfjl2IwVwI+la78rbW5rcUi4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647840984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V9/4bgJFoXAvxnRR6Hea0gC+78wK8K7GX5fjBxRHGyM=;
	b=NqlrYjSMLjv7PmivABjcKom6wQxWhaJIgIn5iNvXC5mD2ZkZOJ7gfcjqgfecNA16
	Urcutv1UmIq8MxSnDHw8abC49PZ2KNFY+KC1u2EJSTzNjcXkR0EZmuKwT/8/SuTR9fn
	4F/URWY8r8VKC2Y6ISblnWe4CjQxbgfhbvkEy4pw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faaf9fe95-c3a9a211-d2c4-40c5-9496-99d4b3c9fb4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 159a46caacf7fb143bc5908fca06559cfed943fd5dba458df413eca4667d2a21
Date: Mon, 21 Mar 2022 05:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647840984
