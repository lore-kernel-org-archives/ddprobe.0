Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F4B3C6B3
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 16:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC195C433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 16:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695227108;
	bh=P2cA9OzURX6wOOl2vs4y6hr2crr4lzQH0u9S17eGBIg=;
	h=To:Subject:From:Date:From;
	b=mKiV8vee0vkrYYCdEe31m1T+M3GfuiQ4nSPPDJaDiiNzmWS3dqDW5kf0jg4pDUWG/
	 per3BzLJkIZq44mpDqU7RNaLBrLPvl7U3StyKqyJu1RHfTPmTyfpnAtlGYvPYX9E6Y
	 1hcSbfdkgHpdzpK9XUmf7uOrfuE73EuycfpolS0XIVEjb3C6LfpjQkC8Dn/fSHs1+Z
	 LXktMjX1OGir3/4czOzd9eX+133LTVX3QV2mU7cUJV5gnQYH4cITYUgLbEkWQi43OF
	 UDfHtRGvT2KnfGGdFW6A4oKCaIdCm8kQjRPq2LFSsiu0napkr7oHb9w+DNbcqZtqPb
	 lTYzyHB/xfvMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E7AC04AAA
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 16:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169522710873.5811.4941068843656640750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e144cc14bcbed9bc9e4528c3c559666efcb9c0f0d10c2e6d259e3601db8bd8
Date: Wed, 20 Sep 2023 16:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695227108
