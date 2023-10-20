Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A0F1A5A8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lu2Mnyoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B2EFC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697837896;
	bh=+szEbPtDmkxjsE9TZ/DKJuBrUrlp+kxsJmnr2CCAX/c=;
	h=To:Subject:From:Date:From;
	b=lu2Mnyoh17rQNbQFm7j4ge0rbsi0kgyvBpyTujgCiemrW3QiAqiCgSZLdnOsO/QhI
	 n5603nc9P1ytq5nHrHHBc/UhY3S5Me32MyssmqbjJ8vAoA+zOSFjIspXjhC4xLUE30
	 XMFCtIIvQyZuqqY5R74lqPHGONZS3TrGE+HXd+PFgF32JhEO66FQqYdfKON5oyiSOk
	 a8i1LJFyqV3IAcO72EENAnmK76k1tqvUFciicjMXN0b++U3x+7Zgrjw8WKLW2pIdhK
	 7c+9l4qqEV9bPv/7SIfwws8bQlhtlZXdSTDFE2rcfYGL1mnIUl3+LJEYJ3rwzraf+2
	 /XmBdr5IhOZ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79FA8C001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169783789646.22121.12030573020739373839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3244a76967c7bb6ad6a0be6fd0774b8d2b35cdb8250aa57ccc0d4b7594c95974
Date: Fri, 20 Oct 2023 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697837896
