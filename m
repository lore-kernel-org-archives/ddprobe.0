Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490ED5CB7
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660123852;
	h=To:Subject:From:Message-Id:Date;
	bh=EwwG1gBubumqGYXUznZUpIo7w8yllYbGUTLPvZZrUF4=;
	b=NuliBixjl9RLLxy8fY4bu1kkQ2+JYWNMu4w28+Ky61fuxYi6+MqSi8Pg525+PIPa
	lPHkT6vKDNMs7lTRt8NRl859yUfynQSwdFtM4zLyhFvKFlD3TmVWb29ulXvMdDKpmFi
	gdkeifVFiMhFVxDphydEISUTdDDe/zoMv2E+HTro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660123852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EwwG1gBubumqGYXUznZUpIo7w8yllYbGUTLPvZZrUF4=;
	b=SqNCnBUcPRFu0zl1eD21yhcq1sDs7PnPfx770gnx+2SOaSgLw3TwQ3A0wiMRfHJM
	mY3mqFq5LNvWsg5KisMJmuV1yE4jMdlSBZcWqiXobnasIzn8aDKjXwk0JKk8G6ez2ON
	Qp722m2Pz4aan3ViV9clVFJUyMMXfLBE2YxTvC+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828717af17-f32e56e6-8d07-4839-ae6e-8df9567e169a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a2c1f2c86c899d68eee46fca40bd6c4272b3054388b84b6963cf61ca344f82b
Date: Wed, 10 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660123852
