Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABA973691
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645044085;
	h=To:Subject:From:Message-Id:Date;
	bh=IiOd40zoqlI8yjcfcTFxklzWf5LbR5kk4Ih+ZQ8v9/4=;
	b=Bm8r8H7lzjEjEpngJvYOHmA2CiPpfmrjM5HUK1Tv7ZikHWP8u1sKx2jFjHrvH7wU
	pjlAiVvYB9+Es+WdqyKsww39htlGJK6ZH7jzEobhq/HoAXEr8zmlbPnDCtPPcFJSQy4
	mt2T6Jf99iL+JBsyMNjAdlm2mrlDMwFph8qfCif8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645044085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IiOd40zoqlI8yjcfcTFxklzWf5LbR5kk4Ih+ZQ8v9/4=;
	b=V96vmFwuUMEWXSXin8ZPY3qOLRu0Nt67XAhaFBCDKgswZVDszCvZoFfMF5IqdqsO
	I7YVeikQux6INzFQBkpsk4/+UTqyhGS0D8NVUs8qe+hX5pfst1HlGQywB6FGrq7WQ+E
	ONDo7t47cqmhI/8g3nPULRRB2OkJoGXjREIBt7yg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0444b057-3c3c257b-d5df-461c-b9e0-208f3174048e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c21ebc75a86765785d12edb5bd235f30e25f5cc578baab5684638a5058da453e
Date: Wed, 16 Feb 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645044084
