Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8CD6C8A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645630285;
	h=To:Subject:From:Message-Id:Date;
	bh=3AgVUt0pOgftdsGdcAQWnjKwvK50GSzr6dM7tuOL+CE=;
	b=UMx3HKnMFsI/VUdWruBsGAsUeeKvOwSruxc8CrLBWeimR4Hg4DPUfEp+tY4QevWL
	Nu4wDhsfM5Y9snTzKB8ITDWJ3bv1F1FaoptQ+PuLS6pgP8j07JGcH5OPcVoJQWsMuO4
	orjakdxpfYHOb+Q9B5xoDXgqDhAal+NRX7C+x/gc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645630285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3AgVUt0pOgftdsGdcAQWnjKwvK50GSzr6dM7tuOL+CE=;
	b=d2KMhF+a2Qr8MS8nZPnRiuRnFzUd/6yKH8pcs4eLJCk/VkOysn5qXzd6M+oL83Xc
	xvtX9Ui3Av7CtZaVJ20P7WhbHxQlX8VTb1h6EK59TGCZpCEypdqKkS36EioEZ8OxuRF
	v3tmwHSs6Oy4f/6sNdkwN5YtkYKYLn8AFu4SejqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2735643b-c4e3e7d8-94dc-4d8f-b715-d7871f9042d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86388668357f5084feef5548d9578633487008ccbcd6b3f02c0e1a9efe76498c
Date: Wed, 23 Feb 2022 15:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645630284
