Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC94EC4
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 12:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653482399;
	h=To:Subject:From:Message-Id:Date;
	bh=65qfJYiUSoMuPHvT2v4zVDEPLyf8JveekyMTkCahwyg=;
	b=MMOzyt4UZagHDs7L4bBNvCuuY+nQipn8Y70oRa4ei2fUtU6EgicwxDaoWedNIQ7/
	0AhcBsIOHN9ZWghCCjvsXR1Kn+X1xCO2VNfEHIPreYhcxKqnr3mdAINeiGbewqM8J7X
	o/bM+YyCygM6UOTiamD3oYJpIbAflXn1mSKn1f88=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653482399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=65qfJYiUSoMuPHvT2v4zVDEPLyf8JveekyMTkCahwyg=;
	b=LOSzcziv3Cfl9wkLUwe+dzyEZ7Ht6Lvjlzkze6q9H0OZla9YFMeh3fmbvBwWY1Mg
	8rZqxi8T/FnlK4iPOEgpFyo+3WsyLrT0Ya6i/+s+XEu+avTqLEZ+cYUAITZyvOOJNFv
	h+7/98XBSvtIf6nt+ojFh6PrtMKOJXpmk+RllYL8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fb3b2623-477c6371-cf77-44b1-83b6-fefa5af18eb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c11391fc5601dc5658fbe4f05be32cb994c63e7191dab20b39aea4c9dea1286
Date: Wed, 25 May 2022 12:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653482399
