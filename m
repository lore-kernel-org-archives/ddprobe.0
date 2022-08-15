Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7AB184C
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660563652;
	h=To:Subject:From:Message-Id:Date;
	bh=BuWzy0cfQngkp9ZC6RR3bg0GU9klZ8Zf0Ac3gssi5fc=;
	b=JvAqmSDainzAzyIchbfxp+fE+eQvI7F2cJmK1j999STLZO2lqXiSKKs3PNqDNpll
	VVqaqOCXX404aOKLjTonURhj5zJn85tul8HB+ghEwShII6JkInFqgzlDsLyZdi/IrLM
	sRMutaW+fTOE2ZRz6llKDPlYcYtKSugH10OkPQ9I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660563652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BuWzy0cfQngkp9ZC6RR3bg0GU9klZ8Zf0Ac3gssi5fc=;
	b=HX/WRZ+IimKiwgKuEYCywNxHXW7CmPEEWPAXRdmtXbrcEdVdLYQMtP0W5wPfAwV8
	WB4ydZ1Dn0suR3orDBE7uxM9Pv8HzuC/H3m2Vg6sa4k8rV/xlmRgsVjZdC8mgLou6oX
	eUgKQ8ayJexa99rK7ZMVzhsFtaR/GplbM1G1bmBE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a14e7fd2-6735b2a2-1d3e-48c6-946d-abdff5d5a2c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2582d927988da6e58235458d251c8dad6208b169aa41954522b10b46118a69fd
Date: Mon, 15 Aug 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660563652
