Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E38BF7A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 19:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656529612;
	h=To:Subject:From:Message-Id:Date;
	bh=PL5/n+8o9GgpNOpf8txR7alWTBy45P3rEK9pkGLBHBc=;
	b=fM33WdMFMe2l2PmxDFAuFIr+cAySNzXAWHh+p14M18pvO0j5lmIZ393N/HCBgmno
	RzosQlGJHgKIAlNY0nwsY92NuwcH7EHepKQk6Rg3MTzMzHmPrM486LiDfIFzS9PCzN2
	APKdRSFursmd2hGD7kMh8cnzzTcyJY3ebHIcxpso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656529612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PL5/n+8o9GgpNOpf8txR7alWTBy45P3rEK9pkGLBHBc=;
	b=IrXUAcX49ICy0ul9iAFqH0KSvCTNmTj8AUfL8193oOD8CD+WTPVd6qrz2Qt+HnF/
	NC7tWOIHG4Addsheegu2kA+fliKah6fYTJGMgkvxVNk6IInN7eFKrcXd1oUs4xbCPPy
	EpNtXzyv2n3SAdLpGDWip7iJ4RyJDPCAdI7osR6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b0dbede0-5fda9364-b109-4176-ba75-4674256d0aaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc20805be1ab7f07b711b53d03e0cc4f86e2a5b2466c6a685c5c349cd026f7d4
Date: Wed, 29 Jun 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656529612
