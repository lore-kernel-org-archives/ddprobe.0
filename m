Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BF81360
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 16:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655051280;
	h=To:Subject:From:Message-Id:Date;
	bh=Rq7VQ7Gix8gfPoe136rH1Q1Ycf/gxseJRNd9x2Qu7fo=;
	b=ProMJtNkYrMXbgnB6zpT9HCZqQhsTOcBh+yKeSZocx40OzNmXph4GCxARaL8tj7K
	hENaR8PKlKv3FmUJkYPTwg8Hl5pLr4z/n8eq05zs++vdjXeiQ2EvMGpEA2loIUe7L6L
	K+3OBu6BkLA7PCWZvBIVtqgnjneoK4/g5KZyRx2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655051280;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rq7VQ7Gix8gfPoe136rH1Q1Ycf/gxseJRNd9x2Qu7fo=;
	b=NlpTJg2I+NtpE7smM21djBhpDemZ6ro6JymG9ugeLpTGFpmGFuyARf27gp61CzkP
	UGn8H7FzD8nNg4dGZaAIDOOON8vPGZunRfeWG0Le6IRd+0LEUjxPpVz5rQ8dCPLJa2Z
	l0VHlaRJWl1A84ERlr2hVqYn1621m6P/Zj5X9R48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018158be5dfd-a2b68f7f-a869-48c0-bcae-49ab18692ce4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3499ee6d58f836ab9d7f0c0984dc1e0034c4a98c2ddb4a0612078fe557bcc64
Date: Sun, 12 Jun 2022 16:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655051279
