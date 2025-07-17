Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B54D192598
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752791994; cv=none; b=MT2D51EtscnjNjoeFq/jk1Pnbx1tCl/6psR0UbmXCRaefogcwABPKeMzfM+LGxEeXWtP8syBVS3yg+nj4DhJCebCTOvuGRcE0VkknO8DR5skjQ5Dd0jOQps+xVNfzHdDrEoPO+7PMSPGPXXXSLarJh392S2ynQ5JXtGnace+RPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752791994; c=relaxed/simple;
	bh=1tuQx++EDWukzBDovL9FoMh1AnzmpqK4oJh3tE1N/QQ=;
	h=To:Subject:From:Message-Id:Date; b=fXfc6Ai+bD0yQKou+3AY7nJ58JTHNVsTW6oqtL2wrmm8ybTfX8xMgKwcWJQi8IEPgF7pfMYZ5/nvk7dXy40DM+HGllTFU7XTmmPzlMRC10w7hpq4aEhVLsVwhonJfuvkWU3pP+f+t6e3U0+3yZ9CpPmzTQqOzEDO/rm4FI5BjoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1V0nVj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1V0nVj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E67C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752791993;
	bh=1tuQx++EDWukzBDovL9FoMh1AnzmpqK4oJh3tE1N/QQ=;
	h=To:Subject:From:Date:From;
	b=L1V0nVj7ISMS1HTNK4GK4FzGdpLFms3eL76EvIg/PRz7jMBtuN8iTPBxvJl/YBFAH
	 4Ql2wqPzQAwwh9HGCpEeDNcv/dhyFco+4ZwqcPwhsHmMp38yvz9+iE6tWrzcY2PlHR
	 GnEp+Fb39rv4yQRjb5NAZ0WSFiclt4t3sBhwuqUZNcmaF+YEV/yjqB17JDvO2r7n2P
	 /tTftqv4DM1/enk+6t3RSHX2UTkIpCBb9OJhEFO4CSbOvY+gGyHzq4hYVsDZyc37RZ
	 VVbj2SZh+B9su2uRj8RP3H3YBlPQY2bdX8zU1rl/8ecb7MoQhMBXU8JRKAWZEDsYs7
	 w5QvwDPSikODg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BCAC83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279199358.19510.16299497793759833727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87cf8cb47ec2e017f52d2b0b161478a9f961658a428fd674d0d2a07571adab4
Date: Thu, 17 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752791993
