Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2440E1D540
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqYhcXIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B478C433C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699630696;
	bh=waNqxayw3BrIPpjSBePRzmoDRCOlDrEXNp6RzEGw+nw=;
	h=To:Subject:From:Date:From;
	b=ZqYhcXIgJz1Uc+eQlXKfmuqsam+YNNOkzLreK9XfsaveYvdorre3DAmFE4DG1DJke
	 8dr/7h84GMyw9fo1Y+cZyf/kq0d8T91tNf1gsJmiAEsmVz6FuFm9ivyVGqz0mUV5od
	 plg2UAo/NVzUGjzRAB+nLek+vdwUWHw6ncpNOoo//1ZurJDFjpvmMZhhNJGp3hW5nI
	 aKoJ2Uv9mPrLApx0uHu1YKBzIBtFGPob85uh6BKZ3ToLwovCz/zV5YsXwaZbSb0ADM
	 MyDvhZ2MRLX2Zlx0LUCkePJMVjjLE6KBPNsv6vFs5OSxm+B0b4V4Q8HvQpoQC4Ks6E
	 0roAJvehZlWIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78E3CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169963069648.20807.5379518900872432372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6637dd80e39d4e9bb91c4b2e52f0caff9dbf149f0965aec002c10e4d6d89dc85
Date: Fri, 10 Nov 2023 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699630696
