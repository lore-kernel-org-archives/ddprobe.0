Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9505CBA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 16:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E63A2C4339B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 16:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674922985;
	bh=Wy+D9P+0uQgJl9Bh42ZiyqPQrwAAoM1mwOzjfSDK/X8=;
	h=To:Subject:From:Date:From;
	b=d5jCCoTwC1k+3J1wuQanwdqVCek3blCgg7NAifYEIJ5DUwKHwKiYrRrwChEYY42r5
	 6OG7lc4kB4q2h5qC1U9Bk/8pyK8QFChcNWtBNZEQMZ/JoDhryS540FdPPRsAEgDAjm
	 T8tDGC3huH5K/Rl3dpahLD6OXS/OQYeDZMw1k8RRsDeM9CUFNwDw54WgtigF/AMAI3
	 I2vKTxa4MMUFrBWcrQ9I2fPTEel42K/QDHJXf2ryulZLwEvAp28Dn1otog2dfFsIHR
	 zxSWzkqKvjqrWMz9WyTWqUDOXWfw4RNBVwsJhJcz1ftMfsFTDIHrzmmqMzQzI90CKw
	 4hs0eosQqj/ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C929EC27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 16:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167492298581.27326.4195403073269266390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d27cf6621d2ccd3018c614d2d63276cc0f956cdf20db7b90024fcf8b0dfc19
Date: Sat, 28 Jan 2023 16:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674922985
