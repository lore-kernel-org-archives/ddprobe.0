Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AD915A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656919612;
	h=To:Subject:From:Message-Id:Date;
	bh=8LWuDRyTcDXyaGPVUj8LCECiKGPDWy7M9d4jCoNgtQ4=;
	b=SbXY0AN4AtXwnQHw8xCFXQgR+v0m4vJ39GfkkFXxGw1zFzUfcJhaQ6XRURcs3Lpz
	zGKo1IsZWGfyi/4ZaMqapYmDGWjLDSt57t6UxCDCZOQo/15YT96OKh4f9PMcdRGSBz8
	AffZyR5b0FLPFNF3l/yXmLnMP6pmfjwbXyjNsG+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656919612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8LWuDRyTcDXyaGPVUj8LCECiKGPDWy7M9d4jCoNgtQ4=;
	b=PGEuWtBDpypWk81FqosYvQn1dMcKJ1fgFKLB9H8mKL5RJJ/NTPlMks9MlyBVgIEi
	vRk3j1+dr2qyyr5uC24RaQj/NiBFGQ8gEAEFHgb1rRuifZc5yTV2AukYkkbQH5FNyl7
	m69IrTX1zEf74O2NTjtbv8z/o6DOGL6Y034CcZ8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c81adb85-84451625-0116-4706-8229-48ec125c2a41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4cdf0ad8e8199ffa1837d18a3517c44a0ed6fad749ec3fd24ee7d56993cd622c
Date: Mon, 4 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656919612
