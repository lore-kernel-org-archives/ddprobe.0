Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AD21851
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 07:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653637739;
	h=To:Subject:From:Message-Id:Date;
	bh=WQAe0aBAZ6oO/+msZytj2GvC6GF6MboEiUg5ucnWfns=;
	b=jpebFmRpTB1Lo2mUTL/FmCTFgp3vRuYBDU8LmgXYvjP8CaY93218uwUvorhx6ryY
	OV1JZHb5qm+z+8VBrkAupdK5wqr0BGh2p9nMewc18GAGwTFXcGOZHxEviyQ7em54o+k
	bSGOtubK8ZZJ4B/WU5F1lbpqsqcbCjYocqyHISCY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653637739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WQAe0aBAZ6oO/+msZytj2GvC6GF6MboEiUg5ucnWfns=;
	b=jK8W1xuCCNtKJK3ZppYHlyYBMmMfJSQVsJl20N55hGiSVr0aTV7410rdheBzi8iJ
	8HhIJlidixPpd3bGUlZDv2khjnnNLAfx9ZZaxxurd9++HacetV92hUhRqSk2qtMQGc1
	cZoYrtpfrtgr8IjRpUlNXg+y6ZUkMAjmOG69gjY4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181047d72eb-f016f83d-722f-4972-9554-5cb3b433e5cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a87c6e89b2a647d8f88d20e65a0589aa9469fcd8f2fe52479988992434da0e35
Date: Fri, 27 May 2022 07:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653637739
