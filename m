Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC6946B5
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 13:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFC7C433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 13:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683986285;
	bh=K3fObzUYkwI3axH0n4XuqiEs09ZwUDGKfNFaHYgdnac=;
	h=To:Subject:From:Date:From;
	b=JMQ2jnMEdvKe9n3B6srKLRXzP9oj5p0+tMuDJmH0rbs2kyTpH+SlunY4w7p43ExUQ
	 d90DNoJBu4FY6PPG5DC6RvELjO5dk4bIh2+86ElGvcny/sQoEfB6O+yYwcpFmYsKJZ
	 /TfxQsnF9lGg5jr9nqFahjflAIfa+hi3GG+2tXA2qBdNLCmFt4pe18ieCEELGTwKeD
	 ZujD4YNhxLvKQJ6eTpGg53PGKrX0qLFXtfuJypWmVJWTOx5rG/+ZSjTZMMQEnTRO8f
	 2lt9khkLU9DRiTf0iMr4Qi7IKwUmcOq31gByOpHW0RhQxjEAgeMQlONAMlA7sOAVM4
	 jBo3+zHU/rO+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B420BC77B7F
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 13:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168398628573.23580.7499793018211975922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a064e5d9b40af4338ab84d9ed74f207868bdac676304ee9f289510722a8faa64
Date: Sat, 13 May 2023 13:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683986285
