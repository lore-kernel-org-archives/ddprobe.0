Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7361C0C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 23:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655854259;
	h=To:Subject:From:Message-Id:Date;
	bh=/Mf5cXOstWcR4EZk9mr4IJPVYvTujwP/Yw05uqHIeA8=;
	b=jz7NvfZWPMqAH5XYlsQMfb6a91bt2Xll+eNHhCuAlsg/9CA6gjd4sDphqWxAoYol
	zmagdpNXiDOJ+qfulNpHLRI76PyC2cjypdtKPKtdjiHt/+fX7rj5bL8ZjrueZoh2uU4
	j7XZvX8WOEKExle6Gs2T53/xDpl21TMgGH918rZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655854259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/Mf5cXOstWcR4EZk9mr4IJPVYvTujwP/Yw05uqHIeA8=;
	b=hutcJ/RgkWRPUQ73eY/l2ui41GVaKnwGHi9NgNfzgfKqkWWXsWmpf67qwg5xHPXg
	zmvhseTlDspyizOwLtgObC4hl2q5/rXDopepczrhHe+F1mJKW9KlikKd96ir3Cl0IvD
	UvYqH/r0bP3bCy1cCsb6K5PgOcxSur77inQQT8hM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181889adc30-ddaae6e9-7aab-41a3-864a-0015005a0304-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce83981d45d7eb6928ed32130afd42b6955b48e70122b8789f3a2662426f883c
Date: Tue, 21 Jun 2022 23:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655854259
