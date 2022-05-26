Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639251864
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 19:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653593339;
	h=To:Subject:From:Message-Id:Date;
	bh=XoC93UCKOhAsiHLheI5wDqpb2SsHOPWhziVhd5Nq8WI=;
	b=VC+GrFxdxJ0mS0chA5LMjwcmxLnRJ01xqAyc2U3IZRti9Y6DnhaaZ44+ZcOXKd6t
	8Hj6zh/Kpy4laZ697RxmXQ9PqBb6vQVd8/wkC4Ob4o2HhACq7III5lWSZ9mPNZQf8C3
	AgVIF87qUJWbalcCzlZGLtwAh0O63kDicfyi3ruw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653593339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XoC93UCKOhAsiHLheI5wDqpb2SsHOPWhziVhd5Nq8WI=;
	b=T55McafxJJRvoJsv8v3C5A9ViIvnBJet2IjcE/vzTBbhMM8Gbrpl5yIXIQBRHl5X
	ypfCxUlOa3dqzjN55AfePBbDDUb6JXLFleZ3VfjIuP4/94YY5qQDpy39gDV2ucYfJPU
	U+xHa8hiu7PIxOg1PcKmebLbT4vU5L3GKueC10qU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018101d7f5dd-89b3877a-dfb4-463e-aa48-0af17ac7d33b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3c8a47f5cf4452d7fd2242e2846fe2456fe39d4c3e63606262e4d716d1802fe
Date: Thu, 26 May 2022 19:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653593339
