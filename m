Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F74A15A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 07:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656921412;
	h=To:Subject:From:Message-Id:Date;
	bh=Dw8TwvQ9g3RL9IDZFFK1+3sjtVn80hVgtV1B+1rcDU4=;
	b=HSRZuvpw1Nj0DXV4/iOsDqkwi4TR0Eurg1A4KtpMYdR/HxbDXSEgwhbqQpgLuGwu
	CKg49dvR59LOmryvP4EKVDeZB+8Pcg9zUeFjLqVBdOEVCL53csJ4QL6f/AMXhjkuzWf
	IcZCxfMnduNdV1S5Ia13NyqinwsC1VYNJkqKCLEI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656921412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dw8TwvQ9g3RL9IDZFFK1+3sjtVn80hVgtV1B+1rcDU4=;
	b=IU+TFPKajGfsLd6rvlNZQn9LDoBd0ejx9WWQ0Zp72/iWRLg24/QhkQvVvNXynlGX
	k7xdu8AiCR7f6oDuewUf3HAjGfN9JU+h9tO6YiN3w91j3+POm+2b6VZF1sFwJe/GNhq
	AR31UbfN4/sp/eqDuDx2A08CYJzHOpUfsSFJXMP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c83652a9-08655295-2e06-431f-b1f4-b449996127bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa1ecb2002d5e29d4e902526493f47ca98e03656e5126fa3fbd7cd976825a48c
Date: Mon, 4 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656921412
