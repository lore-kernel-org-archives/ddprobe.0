Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65449306D3F
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781702194; cv=none; b=Nz80musgVGRcRm1vV0kX5r2GAW+wbWg2a4DPcldQfoTsuFIio2mmm28M21TlbQAw2oS+X9zx4De2KNYRSzsoaV2oVEjfyPeInNvGsDtTk+w0GaWZAB+nthZpzE0nsxuqcUe6yHacTHP9FkMjE3FJIWcrZwlZbF84A3S18Yp+q+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781702194; c=relaxed/simple;
	bh=3mJxs4nfweMFkFiREGhy4FMrrxY3geZkwS4HtSThqMM=;
	h=To:Subject:From:Message-Id:Date; b=gkxSPC9KuLdlcY1KUcxUQPOG7ha+gWek90E5q9drCb7zcTLartLvbBtT7aHLvyEKGTjwZG/KnCBf8u6FCczICIJLTd+U+nJS9FQV2yi5WVqeS3/ZVt5LUdi8p5bbttYB5qptfahwpFw0ISAVoh5QPiij2nsaiseUywL0H1kWWHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qphNif4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qphNif4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA3FAC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781702194;
	bh=3mJxs4nfweMFkFiREGhy4FMrrxY3geZkwS4HtSThqMM=;
	h=To:Subject:From:Date:From;
	b=qphNif4juXG1deqXdiMNdLh1bL4Gl/JmcjaPKzBlQm0PqEBTXuS6bQVMLhf09fu1F
	 +kOQOorVBkl5qtViCTP3ORmvGHhJc1OFBijXKgbLL+saPW8XiWKRlQUiTtPKyiz++G
	 Wm+3Hn8pHyGxOIfmXCL76o6H1rtRMEFGGKZ1RY/SBeRKc3NHiop1/xuDmTByMWxVXN
	 0h43kdF/pVzK3yCLEmjvNb/bQQ3BFEwHy5XDPc6/aiuQ6gclsWYPWT62PYmq7lMG6t
	 xnE1Zq8hJpMUf8k666zwGfxSReZ+NyHHrj9HnTTVWFBayzh5cMtqP5xkAS8leK9Rt9
	 EYXZyNzlj7Ptw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF8CDCD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170219376.21411.4928189900242294174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d0a85a381e05bd91d943d65b6eaa562638703f705892e47a5e35d176186719
Date: Wed, 17 Jun 2026 13:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781702193
