Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5881B10FA
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 05:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658207812;
	h=To:Subject:From:Message-Id:Date;
	bh=QYP3ubefZ1sH3ybWBDveRmOJJAOLTIUCpMnH4BFhVyk=;
	b=HlVDtmA4tAJHdVJiAZA84sV0D8RAP7M/Pf0HdWmL9D1ym50SQeG5cc+LNFJuItfU
	lyNqeFzdeu93ZCnTzXK1PS5UOuNINprJtw1ocroH0RILCLCHkFCTbFOuvNd10VjGeEw
	hk2A8iuD3S1sUsDwc+MxvmFxdgN0RKCrKkhcC5Lo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658207812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QYP3ubefZ1sH3ybWBDveRmOJJAOLTIUCpMnH4BFhVyk=;
	b=gUZ4NpXmokH+iXbtXpK+mBp2F4rPO0PZnO2GwkQud4SA14aSc1VyO7vVMumeUMf3
	epgyOC0I7/+sk8N1xLZoOMuIUDeDS/ojJL+AHqVGCC0JaT/qKx94/mAXv8MbzFzaEKB
	c6n3Oxn8kY3r4n6Xn4dhFOYi1gYn8qCso3Uz+WOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018214e33b18-3af3cd0c-90ef-4271-a07a-e0bc24b4278a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bcf6e1a448729d1ffee1d166e510b3f57c80cea5e81916330097052f688d49c
Date: Tue, 19 Jul 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658207812
