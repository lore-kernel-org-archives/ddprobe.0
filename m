Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA29185D
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 03:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656819412;
	h=To:Subject:From:Message-Id:Date;
	bh=e89owDBEoyPEGqvgztDuf6rMTrChn6BMeeYVcvnCQqM=;
	b=DMVLjKSki3y1Li+lwUiJ7fHK4ktiXZid+nBPfL/S/L6YHe2W+ygKdsp8vY3SYo8F
	G8Ax+RWmLk/O0kquv9oPONo0tplz97WclqAvsjZm4TFdGTDLOpu+/rhzPQF4Ws7K/oh
	onRPwDfMNke2HyGz2w9O/VlwU5/tdQ4Y7UaRE4Vc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656819412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e89owDBEoyPEGqvgztDuf6rMTrChn6BMeeYVcvnCQqM=;
	b=Lvo9rzrhP9D99PGDDCjdEPQ3+fEfxToIiSHTcWqOCbG1CMIvtRbiwvSRl3i+WssC
	h3ctZz+W+TF+JS2Qha9Es1lfaEHcAUFyuuDBy0FIpymPJ3peewmtNld5/Nq1MoFdp1z
	XwLdeh77BKJcmYv6f4yHUHZZMtEpyxiC3SwzsHYM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c221ed5e-b7f72a68-60f4-4f25-9b4d-0d26222a5029-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c4736f23857c641f2ceee9314b13fefb6fe79fe4655c2e5e4a04428b8f5a806
Date: Sun, 3 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656819412
