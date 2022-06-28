Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFF7257A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 20:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656448612;
	h=To:Subject:From:Message-Id:Date;
	bh=stVBG45r0Vg5n4X4rqTuat2shHPou9i+wdUKX9ZQcTs=;
	b=AtP4rdEin2eCoAdxJcKQB5fsiNJGmkL9nbGq3VeiEgx2I+mB2M2YuFyGAan60fEy
	0iBmDRiOqotxdjssfoDPaU5oNq4Z7Mh8GQAL0XYF85OcGZZ8YmBhC1sMrxaiAXfbUmz
	MAjuihzncU3vYwtZhrQawi6L95GAm/IPMVLzl6nc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656448612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=stVBG45r0Vg5n4X4rqTuat2shHPou9i+wdUKX9ZQcTs=;
	b=ce9CcV70exHJ6U+gIyDjN7MQ6y2xjgfsJWyefB/rNOAO+YLGEEaRX2Y/tTvssWQM
	hHlLbga3mmQ/PGF5AtCPZLsMUWQJEOnGw8y3MwQGP0YJ60MZWI6Dm7eSp/fnhhRJfC4
	npN+wnZRGARTJ3jOP888pHlto6ugb2lHJSyhIaSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ac07f7e8-aae6b7db-f0fc-4515-b80f-f5c180ac3c5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9767326821600464fd1779985a0964e38e2c260d26d23377fea9b4c92ab95306
Date: Tue, 28 Jun 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656448612
