Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FCE7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659481252;
	h=To:Subject:From:Message-Id:Date;
	bh=ou3RFZ6hBH/ObsjQ63HvGMZmsosWwLBIkYPb0fHGrOw=;
	b=JdAuYgert4U33PjgIq4nB+JBAlAj5HwLVqNJdG1LSELgnpbqez80grZD0G7JMfyO
	073/9JDTX0aLHRPNBRLf5yGTYGrBnivvjbr4lOBnjKVLtGfmplzUB+GyeyXoyLZ8rlP
	lHpV40JdzZot8Nzrh12/eNPPb10GH+YCIqSoA8OM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659481252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ou3RFZ6hBH/ObsjQ63HvGMZmsosWwLBIkYPb0fHGrOw=;
	b=Dkx2ggfR7GL2h09RykDr6pSbrZbn85UvkPaB2RXRvKUuenX6M65nfDm9pB8LOhfy
	zNW7QUpL/5NLCg7Y1qGXBONRbtJq2fNiMuQ1eLSuvO4QT72/8i+L6u5sBqiXfzBWp7+
	eeGCTdjTsfPQKZ7pcbvG03O7X0d1DKZmPYYMvQUM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018260ca62ff-58868476-d774-484a-a944-0f3eb0f094c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12c14ae923cc2d46985628ac7b4e50e85830e52d025747663bf9244b09417270
Date: Tue, 2 Aug 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659481252
