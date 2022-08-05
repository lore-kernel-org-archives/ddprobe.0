Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74755ED9
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659706252;
	h=To:Subject:From:Message-Id:Date;
	bh=yiKPo42819HxgRW/Wl7ZWmFUyHeaEjNWFni9VOKbPdw=;
	b=eIDQ7G3ULjxn2cE8mNy7/IBXW9qqUS37ExXF1O2VQkdAQo1O+2CAvdWTjV4utFNa
	64ROECmTQ52VM0r8Mmon62rzOJBo/AftbEMl/crd1i2e858XXuNOcWLwSKSjvIysxW1
	lw7eF9Zz7jXD5h0ElWcP0y08iJosLebGQ8bWhoWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659706252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yiKPo42819HxgRW/Wl7ZWmFUyHeaEjNWFni9VOKbPdw=;
	b=O9SvZXLo2B7xVURUDDAjp06t81RiyqSi3IP7OOmSZU0+s2dzo8wym9+MLIKZt+0t
	2C8Vj0XCJ1FZ0TP/IChxZuwKalD5KmzTgjmL6Nqm/3ND0OT1AlYvkWelumc3lGdBT2i
	ePzGHByS/8XYIYzRF+oBBuKVpqhV2teawImgFwqY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826e339d25-37bff268-1600-4284-b902-00864b5a6314-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1692dfeabdcedd78e7b02fd7cff4983a4247fbe992fa65cc2f699490978172c9
Date: Fri, 5 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659706252
