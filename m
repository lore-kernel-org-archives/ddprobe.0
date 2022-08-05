Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9F9BEA2
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659693653;
	h=To:Subject:From:Message-Id:Date;
	bh=ZBdCDgK+MtTSR9h+fgSwWtpJR89qsmOygVYhxPe2TL4=;
	b=f4gpMU+jFUuFp2OVQljx01wPURR+67yJyET5jD6MR7Wj1WVP7LDJVL5CroEbTNHS
	8aZoo7DZ2iu8aXWqQP6Wb0pOlGBHY2v517ipspq1D/DT+ISeAMcl0Awj4LYGYjVpieZ
	Zx4KdE7s3mpE1wY1X89GCChYC9FKNDcWDWez+ta4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659693653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZBdCDgK+MtTSR9h+fgSwWtpJR89qsmOygVYhxPe2TL4=;
	b=DwdjRa9ptoYKNO+XuSxqS8+GiBPWrPckDLw87+dgQJmThT12LrCViWmUdHiiZdXr
	SmluYF0ZGuNnyAUBHlfuSeWT0WIYYoUrXcJRd9y54Dn4w+a9TOU6LLXLtb1fjr3nB4H
	JyOp8m6f2Pez9eUz2Fr3LVap7eSbV4SbTNGHzrCo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826d735a71-d7cb3a45-4e95-4e4b-b93c-ba02b614d377-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11dcbc8b331fbe9c42cf93d7ceed964780602441a4e2497a2d2c78a9b6e489d2
Date: Fri, 5 Aug 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659693652
