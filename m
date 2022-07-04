Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 897187E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656937012;
	h=To:Subject:From:Message-Id:Date;
	bh=xSZ3KFo0H/BFbtQPCPzlfZxZC4EK26YvhtykN+Jr0wA=;
	b=TlrqIACT+KkGhDl6Wx36i+JXGUssnVNs3nvC4gun71n4c7OXOkz8tZViSIcVe64m
	nV5NknofHFNaKna/24ThN29w//PF+S18Mqn88P/Wsy4jMGhxwyU/CA9Ku5ztIgyrT0E
	PxplXrTmbRvZ+YOZnVLc1uMqi4QeJ0xD8RjSfMKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656937012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xSZ3KFo0H/BFbtQPCPzlfZxZC4EK26YvhtykN+Jr0wA=;
	b=X8Itsz4KIqoNBlKYr29k2lnN4x+qTY8PxxVmrmFaZjHUR1sIwCOYFP0Ib4lzUO/f
	KyWih2wn4015tkN1h2lkXwPuZIF0gxbkt1cblBCxILokfGFoBLqawbr9M1O00cFDoaC
	9wRzQuCFIVVG2dB8yBTVdpMu4ojtcOJdlkSxWk14=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c9245c25-8505f4b0-cb2f-4292-9c1c-10b939e8c688-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4de7810b90905062bedba3daa2348d67772bd41dc45c92a2091162415206c93b
Date: Mon, 4 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656937012
