Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D46272E61
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756100394; cv=none; b=Z5bqJnz6L4f820nkWKk+oK2y8sWtxAMDAbx5eR7B2ytgYyR9ApTRre3KKfV9s4nOxL3NX9LhNMtCd5elWJaDCa1lljQ6Xo6+tw9aEss2GkY3PsY6nppViA++Cxub5x1MJU+o+ZkJXNq/TMm6cVWe9nQlF1ehxX/PWdSbK4xEBsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756100394; c=relaxed/simple;
	bh=qsrSneaB65mNgC1sr1XwMVD6VBgXQMq2RC4+TPzKK6A=;
	h=To:Subject:From:Message-Id:Date; b=a1tM4wURQG4jMCmOyFdfQes5sofpUiG9k4O3+FWn6CjNFTNquZz9JGkuNOgY9MNEMMH0K8miNrW9LyhkcyccTmop+f0BBuEhAJgR+Fu7YYuhWYBBK1maiIY9qzYnXvmWpvtg1Bzyj0dNHMcRr8jLutVw+ulrccRCzBVSXaTejb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETviXe+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETviXe+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAD8C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756100393;
	bh=qsrSneaB65mNgC1sr1XwMVD6VBgXQMq2RC4+TPzKK6A=;
	h=To:Subject:From:Date:From;
	b=ETviXe+CZe/KMbIbvV+gb83Vs64yb1HosTzj4pBGPmrKgWlX1JRM2StD7vfYM05P/
	 6ou7FQ/BpukbTD1/dtiHRsRvNQKN6RtOjznYJq79k8LFoqINR9nK0+SmMmD7kZA0Tl
	 Ee5cttCJjcSSFy5UGUHjkovEp1/hygsR2kZwA1MqNUno5iZJSM8EqyiOJNVRP+/Yv9
	 Q98NTKCte/PNDVmN/BzPdIt3O3IWHJZWjyW0chetTIAkBfipm7g0+/brfqYbHut/F+
	 zFu/zxP/mpTBT/LfYsYnmTWepxbXmy5ZnH32sSWilhQGCGsj9dfZa+WuHEnq1Dc8Xb
	 bCf4wcGEMJmWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E347CA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610039357.30048.3627899332456273072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d03e249d174eb117d1e36f30e291e04c4c32f7d87e912c29266c2ee29711d23
Date: Mon, 25 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756100393
