Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7AC12B69
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/EiWfr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8344AC433C8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704616696;
	bh=2+Aasx7vS/ncv5z3WlJRAe2ghOtR9rzH5la9A/QUuWk=;
	h=To:Subject:From:Date:From;
	b=Z/EiWfr0mEKuh7+gtQnPr8GZY2zjr1rsjzUuIuwnuKW5OLRVwKmWHlnPeLlUvJpjZ
	 bjBu6o0yn/pGhvFdVJf+p35u63RuyBwSD+AGib1tfs+R+XNqMw00x/rIjiqW/d8KjF
	 8TcpZIBIxhF1xPWP+pbXNmaz85maOVvRgRTCZQF85R3ytcsBErmqoAhj5dj1m6+65b
	 FJCbv78q2CLwpwS1+SG2+sQevu0g8MF6NqBtp+WuRE9RlIKe7M2LTzh40JXL33hkCU
	 vsfYlk3cSuMlc59KGLyqxGkJif74l0tu/Npf1WxoVkA3ilHWoXxQNrPU/hrt/wM7VM
	 95IW20gfDDmUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68A2AC47077
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170461669639.23314.8483782174781512673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e819aea8ade76909555ba21774188d63915afc17897984932c34fbf0cd666e1
Date: Sun, 07 Jan 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704616696
