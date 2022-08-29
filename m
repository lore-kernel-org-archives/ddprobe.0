Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C828117C2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 02:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73515C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 02:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661739652;
	bh=uK2Uq3vjtU5anyPPssy8QnX7MngNx03ooqfXJYjlafw=;
	h=To:Subject:From:Date:From;
	b=szvpc1+go/GGabnkwyb9o07yk7lhEJHVmmOqkpLXu8Sg+c7MNNzm62+O/XpxHcQvm
	 OAMbQDhgSt1/7jN+SFodhGHRtepFafGh5Ym9zDt7LoKD9UoBLgTlgnoNag62W46n3t
	 bAGZlHYQjEGErIxNNsZgURm3pFcRqPTuj9ThC3tEn/JWSLnSw0DThwVk3qwQ/njWa8
	 4xRbWzi3WCUuewJVC9s9ygCYGLBjYqtQ37rFOgHpow8bLxTdGFOVlO+TDYK0LUzZmB
	 OCbXnDkkNi07tQwszvsrU0++8/eJKM46Yl1tewR0iQDs7NX1DeabhtBd+cllGtkj0k
	 mI70zsKyEUg9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53ED0ECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 02:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166173965233.28859.17623250453954283362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d96c1c169a9c916f81683e42125c6d6b52697a252893b44743a7e5949af7f57
Date: Mon, 29 Aug 2022 02:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661739652
