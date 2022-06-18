Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E097B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 10:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655548319;
	h=To:Subject:From:Message-Id:Date;
	bh=vKgFZnnyLInINlbCcoNgH8LH0PO8rCv2Z/nvARqxNpI=;
	b=QPRi4FjcvLdSxY0oK2YedU/WYE9pd1tAEZcdYsaWJj3bUaiqfZ795RMcwJdRC9/g
	JLW/djEtEQinHUbjUf5s4fzaOZGhGgZCrFWks/RZ1UjOJSsH94Y5mjXgoqdLT+CUZqX
	LbMRP/Gx5OgktqdoEdoQoLVKcQkZ3rzX4CptynEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655548319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vKgFZnnyLInINlbCcoNgH8LH0PO8rCv2Z/nvARqxNpI=;
	b=WbcSiXkj27chR23cfgU92Zk1G0GvXW7cIrgcCnFOhgx6wVlngk88fYxnQ8VtYs5+
	3GtzVja8CHSYKrn2cRtAoflynasjBR1VP2qu+z9XNfBoOagnfIhlzJh7s7aYJcxhTVv
	bo3ZgvxqPJJ+iF2w0SRbt1BdsQAEEga8G8XsnXxA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181765e95f1-f6f5c2d1-4227-4838-b2ec-c6f676391bc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36955cd05ccb5e15d3d7c27e88a7c09ae652d9b05dde90cbd373c7dff443751d
Date: Sat, 18 Jun 2022 10:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655548318
