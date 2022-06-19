Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDD87B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 02:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655605019;
	h=To:Subject:From:Message-Id:Date;
	bh=9ED9qyQIftYq6sMiWBe0H3J4itOP7uwdwJ812P2tmjQ=;
	b=FpQVZA3E6NAFq0uqMv3+U8nQ+fm+mHAQaqFG/2veN0/OVQlEb9ZocORib/Vfxopd
	FOO58ZDCpa51Oy8pW5+EbKvL0yspJscjrmMgSqnLVEeyaRQgCUPWIbSu2RChv6azKtU
	FZLYIo/82XDYHVn74sLero8k8RNVNtLAAujzeRNA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655605019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9ED9qyQIftYq6sMiWBe0H3J4itOP7uwdwJ812P2tmjQ=;
	b=Qjz0GuJcxK3TnOyXicTFqvs6LKOwdVyIocQP1Gh0MKcUvo/Mz9CWhmZe0h0wUp39
	FrTQ3zcNDJYx2fDXp81AGDqNGTtQAIICcb7DnAH3Y8Lj3lTcnQs4GohogNNXZrp7Pq2
	OfaDEbBFcT+9V24Cxybv+5xsADjpeCqcv/iAjM+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018179bfc290-3f3d1b1e-9696-4c25-a3ad-8f43507aa31d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e01b67f5a7e7f02ef14af8d3e7e6d0413744fee9b8c8818dcefdc21bea0172f9
Date: Sun, 19 Jun 2022 02:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655605018
