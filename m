Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B2B8440
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CCCCC433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663813853;
	bh=YWw7JdPelfpdr5K+eJjSEt/RPEDz0MwSYRLaE5Ps0ak=;
	h=To:Subject:From:Date:From;
	b=coocE7NmGgbja8Ohh08F0lWOJbIQsK201j9z54aeVnOncuya5MCyloMePfUJWlrYe
	 PcoPUaWByAKAQIrHNRo39rdHkCexg+EKo+7E9cZ4C29bbHt1MMMR8pDWMTIhVDRYCn
	 gLIH4VXhKf2TyEtmtGK76rsto2eOMc3wpT/qoff+T5nFtN6JbvjjiwJVH6tPPxSquV
	 KLCX73Ccnchig9LXq510xz7b/rDtpjORZ8/UzXDGdwOk8I+9dFqdWZfPoW2n7JXzi+
	 ic2fC06CGP07RIQ4pZ6k5p9eIx/e8ZpR9yqfwf0WQW3GAbcr1ceNjbBlJDf/Fe+Env
	 O5dqJAQ9Sl6Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50DD0ECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166381385332.12768.16226391832976496073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414d7a903d0b276fc7231032948784da34908ab3e08334813b0d411298966c4f
Date: Thu, 22 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663813853
