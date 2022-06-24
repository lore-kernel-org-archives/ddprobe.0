Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4CE7C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 09:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656064012;
	h=To:Subject:From:Message-Id:Date;
	bh=FLrB17hLpVVSqWZpUyMvFzeKcb1uOUdpfM2cL5CSxJQ=;
	b=S4R/2n7mjBowS3wxV6h0yyqdqn5qzjGVYRRHYVr2Mr32LfpS++QZ6r18Qwfu9LJU
	+hU/joBCQj2PpglhkemEjxcAIMISn9nAHuG4EPbMC7GnqFXcwWKd0gzzd/JMDQVkLl1
	9/ldwY39K+8aa4sny/N3ep6YDIq7TZapoKL35Acs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656064012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FLrB17hLpVVSqWZpUyMvFzeKcb1uOUdpfM2cL5CSxJQ=;
	b=OUcsQG23B9+xM+4QeNSTCMCTW3YSEC+YsAZCzWtzABmG7O2x6nS4ZhNBnVuQbsu+
	/9n4zD6ec68lGG0KQny+1Ixl9cDyfXU9V9f1LuBlNBWCArOeP46k5YxHHB9BRjHnQvN
	yWhwkWCL9G1lMd4tPBYTRR2eJqJtFRJHgivgXB0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181951b7003-1a9a5978-a915-414d-b33f-6c26f87ff430-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 888bc35832577a43f35d5d7cc01c7e0c234c512119219802ecabbea5fec485ad
Date: Fri, 24 Jun 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656064012
