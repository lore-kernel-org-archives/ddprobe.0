Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2198C1841
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 02:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657505212;
	h=To:Subject:From:Message-Id:Date;
	bh=ax/og1oZFgZekzX/7TVymu/mTLritu0cAOCdppTC/+0=;
	b=EpRUKKUK39X61vEEwt4u5iKtSrPy7zCCly5v9RKGjNjqkvJpbLlTeQNpVBqcn1kj
	q5PPk8RAPhojloOhq1w6hityrXRz8zGbWwgegZn9ZwKo3Yt18BoUNStavWSCF7rrB1t
	UQFPVPfyCRNUqq7l5YPC1ddevpOPdJpnxbC/BHNs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657505212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ax/og1oZFgZekzX/7TVymu/mTLritu0cAOCdppTC/+0=;
	b=VGhfmkBBaEhLABDHVJgnaYRPYLEEW/jnY2N5poWt+P3bR9Et8atNB1Cw2ynbPION
	/b3Cw3M4IbC4Cjhm0cg4MIRsxecnODdvrTyjS084ovxRc0s1J+i/8tXfZW+G7otnArM
	cKJ4misBqErxo0uEpsIUeX3R3ZS1AlSutCItTdjU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eb02679b-fed7f119-73fd-421d-8072-186ddf5fc265-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c48de1f06b944c01d7a6b9312018a5f072abca31fd3a5c0dec4fff1c6e3e002e
Date: Mon, 11 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657505212
