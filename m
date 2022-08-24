Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078EA7B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 04:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661315452;
	h=To:Subject:From:Message-Id:Date;
	bh=t4M+ud9ba1stdiPnxHUixtc1uGOIjs49xJAL9+umSNo=;
	b=MNz1gDbnkfs2Em6YYGoUkBmvDXPi6PYG2IQlPgm/jjiOY/2yLB6TdPPYxRK1lomq
	yiLefiq3qLX1bNdw8hSxOFlhsItzoleEC3UdaIUyy4X8p4Pd9oY59jwroF+zb41RS7A
	HOXtu7C64l5efhWATPKMGDzQquVS70SV15l131JQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661315452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t4M+ud9ba1stdiPnxHUixtc1uGOIjs49xJAL9+umSNo=;
	b=iZBi0G/OaKOaAL/oEnoXo2lqznATfHrUNqUUpd+bwFr5gAOVUH/3UaWlT02E+hQJ
	MPFM2hU/NS7wteHs1q8xnLvnFfPvhWglznl3cjhldAuDhZYwlj4vuJfQW26Rr73wgUz
	e7HxoAmPrQTvdReC6GJ0K4NW07xCTamOu6pb1qco=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ce1e0e55-a01e5b9c-8388-415e-a4a1-1e70f51d1100-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3129518bfa075ea34dcd82dc31a501559a75890e03f0ee533979cafb955a0d6a
Date: Wed, 24 Aug 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661315452
