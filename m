Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D807C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 17:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654967339;
	h=To:Subject:From:Message-Id:Date;
	bh=6bDOxJQxv0Y9nu+oKGxzd1Y9MJs+mrL+FbMsK/RwMgc=;
	b=GH8qm/BzyAp2ukkSEfG2ut1S5jq0ohOnP16qJZS7nLMkL4svJ5P1nIwtOuwGzXcw
	zQMevyc4muYv+T0Z6ZflDR8zC46mDJAB/LPaNtEyj/dEg44egrktrY1o2aq0r80ZaBJ
	JzrVuTm02tM+VLN1ztpPvle+1cxekARxc3VEYt5s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654967339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6bDOxJQxv0Y9nu+oKGxzd1Y9MJs+mrL+FbMsK/RwMgc=;
	b=AiuMJbCGLlpLjknhA2IP+CS225BsFyab4iW2ruehH56Ah06la9Jz186HNjFOzRzJ
	eVJGqAf96KBhDsDqYMkCHWnuGjTlkbDCmvLr3hZb9EI3vY281Ws9BpQ1Ny5u8apTpk7
	jHSUt1gX87vrUAfY+/dXzbNGa2UOlG9RQap3BDJ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018153bd88dd-1180f555-b19c-456b-b0ad-e5c2ea3d346a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e89f1fac79976ba49d28e5a885e4219a9361ad4ccb3bd1f7498e82e25226e10
Date: Sat, 11 Jun 2022 17:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654967339
