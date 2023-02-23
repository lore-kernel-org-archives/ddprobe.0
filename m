Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8CC258F
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 13:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A6CC433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 13:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677158105;
	bh=aQdvTCl0xIAx/YKUntPdv2AWX75NNEqwXFcfBO7yFVU=;
	h=To:Subject:From:Date:From;
	b=u7ZAvVq6FBUdtjHK9p0BE3Mo/eYIQAtQ8BCqyT98zVtSsygWShtG34lAgftvE0El/
	 BZX6Tr1fvRTQnghdc7vEQaKEj7+m445IuikqVHa1uwLTiM0/j8/MzOOPOomk/G+Bct
	 3taqIK3tCCM7LnXgMv6Tu8pQp/OOUiJsLzwLpq+yyDGBUY/lQ4ne2d8G8KfEgtH5aW
	 uRyErK99iOtZTStTVeU2YL6x2KxkF8Bpa4ofHmpImdnbwuubTXKq6gNj4D8oZmeoMx
	 3y0IseG/q1QVWxfyaUW4UEnSUon6Uu+LODSNur3sH7e8BSdXIUEXk2wvH0fp+rfp/B
	 3EbN+PGRusjSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6C3C61DA4
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 13:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167715810576.26205.6510380431412846828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c962b02f88fcb79e05f953b4f6877569e748a35c97332767b909f851e5e500
Date: Thu, 23 Feb 2023 13:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677158105
