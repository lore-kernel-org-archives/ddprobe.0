Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06BDA20
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 03:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655781719;
	h=To:Subject:From:Message-Id:Date;
	bh=EXVKx8EkZWbWf0KO6wOoYnjiC3gadbdqV28TI/NVJAY=;
	b=C1NGM6LuPfQBlXWsroXkBUZqyedLrHabG5SqI056H/FGkeOCQQcHCLsg8jUgU4O0
	Lc0yR5y57w8u0lAHzReGUE8PMZ95Lott2YVSYkk5HbLXOxLZMTFtSbkga+CfSyK/Gs3
	YElV0ddZUtnTnR90Leu2xOhK8n+RTACBpfJWGCJ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655781719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EXVKx8EkZWbWf0KO6wOoYnjiC3gadbdqV28TI/NVJAY=;
	b=JMHm+1lLPwk8pDINtYcuuMM7chQuUJzff7wDVlaGjfi9fza4smu74JSfMpeQ5QR0
	FUzFDW0StVaE0dMMGV2PyyUCltC2lqlRojim2mO5BM2nq6E6lzrZrUOIQOnjluWWOth
	tlej9CRw8fwgkNKBT6czNjJajcXmBEkn9M0kovHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818447fc9c-bf236e17-671c-4b70-9956-6c1781b53c1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd4b20921442274692e1106f8e0300722f4b303ae76fe0c3b81f99cd6a5d28ff
Date: Tue, 21 Jun 2022 03:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655781719
