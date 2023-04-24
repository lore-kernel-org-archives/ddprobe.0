Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374F97470
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 22:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BE5C433EF
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 22:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682376785;
	bh=een+qtAbft+DMuAc7EGzdQ8+UY7K+tK54d/HF5XTaj8=;
	h=To:Subject:From:Date:From;
	b=XEO63g4vAdCXDIZdLxdwEHCr2nS9OQ02aEJwoqezkPWXgQ9reqXjCVIjHXjoLKxxE
	 fv69CrUmKuA2lTSiAhqq8N3O8BjGocrQeal2tRbvpiHzNUh3KvRNl4ezvhCKTU5S0b
	 thnzLRQlVh1Zd6jztwI8tNVL1+cKlYPaxJFEWa1UB7y9Wg/H1odquGiDSLUR9q5o2h
	 JwtOIOYPoDVIAw1eD3uskpT/hCaT0uZ7JLDLo0lDHGVv15z+xpaw9yc6Ox2SsXsZGi
	 3kqXP+g0PH0rcyMqG4W1bqpQA7p4l6UUTfxN+0WMEDNKFwWnmphLVQ6Hxk0Xh5Aot0
	 DpX3PCGNnMDYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B833AC7618E
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 22:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168237678574.27863.16511461364696855293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5a704863f56cf101a0e76c5ee4e2e3702b0da1adbc7e3768afe690d5ba22b1
Date: Mon, 24 Apr 2023 22:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682376785
