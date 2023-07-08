Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD3080F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 23:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F6AC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 23:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688860028;
	bh=q6gBueSZ+qOoTl4xh+w4A9A/Cn6F3RWSGqqb4hLe37I=;
	h=To:Subject:From:Date:From;
	b=kqVL9efYWT7adU4jjNYboE3bKYK9FavwsWS/ByEGmzOWQYzMPVpcT47J4W/1C+20v
	 6vVatibwT3Xd9aMTJLN5B8bevX83BBcD9zq6I6HNaToqHpEVH3D8mFhN44Ir3yPTyG
	 hV5mOSZH/SAgYlH91msxIVfjqv9rRcnP6WBGmrjXI/8UInwZML2GzehpgjLoRpxTvm
	 395SAkrz+kZGUZjrdfOxaFW2o0hAcOJoGgSIYqfPPMBQTInvfAi5Srn0tlrOFVvZxd
	 PUB/rDN67rfarp2UqnfdH5Orv4HxBf2/8INhnqfzpOAWm0+EnRdjFMkieSkk2yWX0Y
	 rcSbgObSFKYiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BABF8EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 23:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168886002875.12570.8650087868412908298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff60a608d14ef991b370ee5f825b881ba82b1e9e01ee4c48188d8a14a8f0033b
Date: Sat, 08 Jul 2023 23:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688860028
