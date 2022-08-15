Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630017E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660585852;
	h=To:Subject:From:Message-Id:Date;
	bh=BurGwGhGDUxNoG75JZW1es1x2jf7hkCKDPQoW2uVt9o=;
	b=leIEcYA5XWbHg8K/yniikSRQCZCjXdXtjvR1TN6pWoITWVTbzRmdHMccp3AoguVL
	mJ4nCQaYybnpsrv0Frcm3/VhvkYxxqzNUa/+1WqK8vaN8G/XzSTAkbSAmhqTL8mFVAu
	0KyVr/TQVqHc5QHj00KCTYXpcW4vf+UZlb54ug1g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660585852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BurGwGhGDUxNoG75JZW1es1x2jf7hkCKDPQoW2uVt9o=;
	b=i9yw+vIbHjxBed5gYVxmHowVB8Q/a2eFn8ex2Z77ncfvqb6cB5HlyX/rOTkyLQ7T
	rQyia3qigANFs9k9aDmhymB/KRbGRUdgvdr4dWBAF6gIn0yx5G1Vol44RrizLfaGLMl
	KGleO0xR/e/1UGGh186Z19t+yQeLr8OTDQnTnoR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a2a13ed7-ba24aa45-9c92-4ec1-a332-789a1d5a7989-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7732e289b1fb7550b1051a1462009287bb8bd4e9adeb60316c209b99290aba8
Date: Mon, 15 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660585852
