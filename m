Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC8947B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 22:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654728779;
	h=To:Subject:From:Message-Id:Date;
	bh=oM7sFdZVN5HRbNa8NBITBcfaynEsUXLM1+8gwPK7sAU=;
	b=LBf5tsbcZHEI0wcKwTkChPg3DCQy9nS1eU4zpcv7vN+gm4xiUYRUb9mLonUUBXHK
	5+wimzYXSd+9zJnaXXVMUuJ79vnPn2MKkcVs8189xz2yxJGT+8zl6DuPog/SD2bduo4
	8EOxmfcExklyCZmBRH2hOq3K7/69+6BEyc2EkPHQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654728779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oM7sFdZVN5HRbNa8NBITBcfaynEsUXLM1+8gwPK7sAU=;
	b=DRXQwJXqwVprCVTpjjwPoiKYuhDXbuG8h3k3g+UfMXSwx8XHaTKMkQDVpxqsVUKO
	17Q8SKigBe8Hj5ze74bZbfvkzKqRGEvTY4nQd79w0+dWN406bESI8O2AbyLyzou+5Ni
	ujkWiyaCbB3zY9LrUC5xooAdWJMwELvpFdr88mbQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181458565f0-0508430c-5e9a-4d2e-af8e-92a05524deb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6039b6ba19931cdac58f193f0af9a2c869d9135f79762d0a4fd51dcc963f601
Date: Wed, 8 Jun 2022 22:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654728779
