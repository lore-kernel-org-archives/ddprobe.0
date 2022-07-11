Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E727B1865
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 03:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657509412;
	h=To:Subject:From:Message-Id:Date;
	bh=jnNIuJqnIq1QywOWrNrOJCVxfdaTCfD1B4QqrheClH0=;
	b=CI/M9X5JtBDR1LOIZ/6x1BB/SchLk0XKc1ziC38Tedc3fer9VnCXXVfcg1LJhmRc
	fZSjEssX7C6Iohoz1N8tYm9rhwtrMjdE6nQVQLYVanFr34yh2cBmpqDDxKGUomQXMg1
	QwMoESlU+Iv0We7jQjdKGJsZ/x6V+mkkC6lh/Fbc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657509412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jnNIuJqnIq1QywOWrNrOJCVxfdaTCfD1B4QqrheClH0=;
	b=gSXdGZK34ODN9/lDsXg3s5Wq7oYN7Fw1K3ozHSrQ47V9yfpN6AxVUdSc1t27/Dom
	uTwQmINR91v0z0czRM2U7tjFb9RqNimW1p9cHK7uo2H5n2jf3Hy9t1752ajzxGQgQxA
	WRptmuafzNrM34+E1c5r7lvvKG8CJZ5X7WG6sej0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eb427dcb-5618c3eb-0aca-4e13-911c-ae4a8acc6203-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a0f438585aabb485e1d69d0ea176a45a2888c03c3f887eb4eb10e318451c54f
Date: Mon, 11 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657509412
