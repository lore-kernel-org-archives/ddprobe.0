Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CAD564E
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 00:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645577185;
	h=To:Subject:From:Message-Id:Date;
	bh=ddzKbcPslYlLRv1wSQpaxRVXUhZJOUnnD6lOUHkCVmM=;
	b=RStmevfogJxRMWD3aHmOlfSmCs/Q/AQbwZyTV69avePsFgNdDPHM3rvkxskySa8i
	62DNMAM9dbpDzlvBPe9HWJhFwj40szbassp15zt9pSsTsnGoCps/twEh1+RexOZRZLF
	PP6vnHbe/pNDC/5HMyCYgS96C5zcVjUI1ffZ+Ut4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645577185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ddzKbcPslYlLRv1wSQpaxRVXUhZJOUnnD6lOUHkCVmM=;
	b=ipu+1DLeVZdpn8Yc5t0EPwuIORvMDOhUwWd/Rvclb/HcSAkv8ID67yOO4b8cqJxl
	im6k80yAzLCV7LPqTxnWs0kdJD+swFPT+XU02/eyb7DKuw9OgoXOLqvFw95bbwlMSQs
	168gE0KnpxFWkG2pgl+dl4Xok2C380u1kkLGjCm8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f240b25fc-aa91ef7c-8995-48cb-adc4-92237c6c6b7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe5cfbb74450b52e725fb7033ab2a895bed89be72d543e2f8b1f3aab3f64169a
Date: Wed, 23 Feb 2022 00:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645577184
