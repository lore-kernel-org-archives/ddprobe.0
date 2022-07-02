Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002951383
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656752212;
	h=To:Subject:From:Message-Id:Date;
	bh=v1R3ZYsGIBPMbK2dk5lqd3lQiqqRS2fwVW6FFEOAEzI=;
	b=DzwAujXDcg3lLwK0HwjYQ12Dw0dxiCRGS01gg3NOWArsh1/4ngNWDIHBU86EfG4r
	ri3fKL4XAVRuQaNisq/rLmkwZdrotV4RlP5aIW740U9kEXLUq1wAdlNyuN/vq1tUb+5
	LxWzgANsaCafrrmMI6nq/wYY2OY/3NEOf0yrPU0k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656752212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v1R3ZYsGIBPMbK2dk5lqd3lQiqqRS2fwVW6FFEOAEzI=;
	b=aI2zgT2PUD1+KxmVUJ781TpXFl0rXy7ZjWvGLQZutkQDPoWlNZ08ZTlF4x47qk7N
	zjs0xMxjsWPCFvO0kKXPN1QgMKEvxeK4wg9tCH1I5BG9kQiXuXiUqaQUnwKACVatpLj
	p2iPrtfFTWO19RpZrAPZx1MK203aYQtQQQKR2Tw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181be208923-abd75613-8b41-448a-a514-2330b5c49237-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20be17131df0cafe1f330a3f750f843c6e8b45a6cc385523dc8fd584981d851d
Date: Sat, 2 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656752212
