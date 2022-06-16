Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C237A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 10:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655374799;
	h=To:Subject:From:Message-Id:Date;
	bh=pMr7S1sBPUmtJeA5Klc/p8BRiDhO9y1k0Y3S52GDLVs=;
	b=cf/mp+1om/pCujF6vJFX1t9Bmipx/31xmH99YKyE6VHC/G8cuYp8nyEoWSIGfr+I
	hvQxKP2pW8VVIBV/cCKJRfBA6tYzDIfJUfqMpGGPJeNSY6gsBchQjeKubBw7Y23pNSn
	21el3Q+Uxs/GbGrYJF95rDeczWDXWglrIz198L7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655374799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pMr7S1sBPUmtJeA5Klc/p8BRiDhO9y1k0Y3S52GDLVs=;
	b=IwltU8mXI2B646eTUmKp2PrZK0AfJ2o4OdlYM/4IZ5u6YHdOJpZEKY7GoMkq3SwX
	9y21ArrFZib6E0XomoMw1pGJSz0Q3NcYZYKgW3fxjtfB5LmfI3YcJptZ0aJQMHBaQaQ
	++useabCBWULmr559QS/0LbX+FneqtlUI/TYseu4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816c06e186-dbfbda9d-49cc-45f5-b9e8-5e9cdcca5403-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62132529da9ad0f73eb01ad0c97b9b7b3a1698d0c0f2b71b30765ef41dc551f8
Date: Thu, 16 Jun 2022 10:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655374799
