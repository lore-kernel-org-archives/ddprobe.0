Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCE710E3
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB36C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671370887;
	bh=Ks6wmqE9QJ3Q2wYI0CmgMbDCo4mb3jXqUxi9moee998=;
	h=To:Subject:From:Date:From;
	b=ijwyHGVEnMahddUPrD58kkae+KkOzu417iCR++JBBVH50XJzCMHHuyKcD4uhO1Xdb
	 bAx02ARsoGguCiAsKBHcB7kO0F75gPQ+FNQKgtMjOVjUgQFfTeglUhJ+f/KKRk5v3k
	 oHWtVew3AVZ4P7g2AWflfGzNkkPNmbu7TlUywNIPbXEhAjgh6cJoRXxFsZI3ojVdJR
	 r+uQFmbovs4M7WSfc+pNWJPDSym0eAbzX03mf1YCSCw/rPOBlrHPXdUnyeCVbAUNe3
	 jdOSqLf2JB9EqyBTs+dTlKULHleHFOUnWKNchh31M3wOV/D6Xp2le5TFftMmk68v7b
	 4ypQQWio8j4qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D624C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167137088737.15170.6624337540290928282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d105768840f68196e13a8cf32214a3d245b5dad4b49ece797761ece0cc49f8f
Date: Sun, 18 Dec 2022 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671370887
