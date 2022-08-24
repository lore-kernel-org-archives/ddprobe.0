Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4DB10E6
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661358653;
	h=To:Subject:From:Message-Id:Date;
	bh=Xwug6Oi+dVlqXiKqBwMSYR6ujqCmlBr4gvSe2YaHJDc=;
	b=HYn3qVvcTacsVuP7+JRrM139StDqrxC46Z7nPIMvM4wHdtefTtU3Y7w+wuvBuY9j
	ZO+bcV6ab03YuGvsAzPM3eJOk2yQ8RSLv2HpoJWYaao7AK6tNl8odS3/YR4JFCFAzgX
	1e0A0psAy3ftOl12rhohh52A34wG9orWcOEZiJz0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661358653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xwug6Oi+dVlqXiKqBwMSYR6ujqCmlBr4gvSe2YaHJDc=;
	b=V0Due4lQMrtOIdwgIuu2uPafrDZnusOBw5ZsDuAXuKfGA1Rg1hQ5mAYwiBRbOb1U
	NE8T/ndC+cBbIU5bRpqGbiOrv3VkZvDbaoGR1iEOcp0+3ABkd1mfMUQrRW5GBsitvYQ
	sl1+tvTsQ/zrzo4vIh6vuIkGbbAO8WOq2oVkGbjw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d0b13c9f-1ace1c41-4e9b-431f-b983-a14ff8ec0362-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 899550ad2ea6790e38f9b253eabfa2607129b349a7cc40be7fcdce5704faad74
Date: Wed, 24 Aug 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661358652
