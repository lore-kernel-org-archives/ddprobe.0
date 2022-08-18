Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E58440F
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660830053;
	h=To:Subject:From:Message-Id:Date;
	bh=lDUN+yGAa9qTd9OyQLcNNL8ANSJC6UTdx6FHB8bR+pk=;
	b=dcRaQKY9lYmF6lJSkUmioVeceDS2gdyVeAp7UBgn4TbqWo/M9iBYAfsJH20vsGcg
	70Qzh++jRnGa9MYk6o+CkYCMQfqtweBEFySbbhTKKMWnYkkUuH5GwB2hu1v6oUyKjlt
	64f26XAO2sbOgkgeEKXWS4SItqEt2XWMWswJYG5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660830053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lDUN+yGAa9qTd9OyQLcNNL8ANSJC6UTdx6FHB8bR+pk=;
	b=YphC/yJL7ewJ4mXGUCrDxDn32AhDgPgVjyB4GRJV+jJC7bRkVQy1Wu5jsgorWCfV
	AXdyggE/RfJ4+hz7kex2r42J6HksaqBRdJD19ZoN0EK6jQUWeRMc4qy/BYfmEO8aM67
	HzJs+26eT/2b7MqUQTHI2SD+AQTX8ryQlRsRDVoU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b12f7128-9d071bb3-49a2-4eb9-b09f-0daab8973144-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 936b4295e58b8a00304bbc343fb31d82846c156144dd3c51b41c813501066c2a
Date: Thu, 18 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660830052
