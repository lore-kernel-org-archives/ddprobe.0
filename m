Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3445815AC
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 01:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657674412;
	h=To:Subject:From:Message-Id:Date;
	bh=PeMSoPMZFYB0t4rtcvypfKBeOS5l+2n6zYnT1cn9MNs=;
	b=N00Tf50h8nCqUo1ExH5tm9uXecnjfpA/xeK39vLTapXZo18jqvErhrZxoSqmpTAp
	r+8/VQQpE3q2FusCisaMOAMLveebiI41QmxsrWTH9KYkpvXKJVVHSOSQ5GgIkfna9wc
	98Ke1hi1EC1Zvf175UZfXaVN14nVynnlL/kAJx3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657674412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PeMSoPMZFYB0t4rtcvypfKBeOS5l+2n6zYnT1cn9MNs=;
	b=jEgnEMrb5mR/aH0xdDOQFIIerAt2LfqkvSLypj+bxWPEYA4dSZd5/IRExRRsnqvf
	yjIGcFOX4N1tStXL99GTHez2uicIw00CXiOQJK82KRebbWGux1YMPgkyFkt3JjpSjS1
	RYS+ZLEm4TLgHC/3WhjC4iy8vvQROC/7E5yNmvaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f518313c-e8be2e39-38b5-4954-9094-06f9bceacee1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10932c0c41ed549bd7734a1e98427d36d250852117c26538524ed6c853f63edd
Date: Wed, 13 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657674412
