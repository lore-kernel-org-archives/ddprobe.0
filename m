Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382101364
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659531052;
	h=To:Subject:From:Message-Id:Date;
	bh=0Oq9vn+LNfDSIjadEhJT0Oqw2pTH3GEMcluK1FadQn4=;
	b=LUqyLUl3D/Io+v2CfLDHW3AUtlsyh3M7V0vVw5BcU4XFOL3TTpTE9BIFILqhe10M
	yPZZ9BLCBK3giBZkxKITKJ15rrdcJI/hQ4CM34L+oIrGYQzbjljT2O5TD5Kyjlu40e0
	/mXo01bf+K+BiSWpFpCGuyhCh3Sy/K3NEtC2uTvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659531052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Oq9vn+LNfDSIjadEhJT0Oqw2pTH3GEMcluK1FadQn4=;
	b=C0IHkF7xI/ff8m+t1om23ptya5r3wFz6p8o2wvXfhEyymT68t+UTuHiUn2Bgs8nI
	AYlcDQKonHFPWKn/9UYFIgOZcZw+jIMnFAa5/kuNmdcBBRLL2Fm1vC8v3cDPtHVF46A
	H7l25JPO9xBzDCVYKtFKfDIbnqUkjWoVH3kS+59s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018263c245fa-fa97184d-0ceb-4a29-a92e-0c6bdba9b8c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98f9e55d81e340db06cfe30932bca7e860219ac85698f76dbc1571e093ab9bc2
Date: Wed, 3 Aug 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659531052
