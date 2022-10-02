Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A327B
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C9C0C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664725853;
	bh=myLOTRuc442tcl2BbbNupgKj/kjWsYdwHTJQZRuZQfM=;
	h=To:Subject:From:Date:From;
	b=rTVhTkz7T1YrfvEgwF/tusxQM29TySBcAoihGPXGKRHreO2DhuZpMm7qb6za++oXR
	 yPdCe067wmbM+KGnumBOC9j7glzE8umJDyB7+TYopvodkBNXia4wy41hvWCNIcBbAR
	 VWpVjucmHG7jti0X4DTLTfHx/QrZqIvvpyX1f7Bz3AP6ZmFO84+bW76Uhj5JU7Bbjy
	 lmaRkkYNVf6ooSfYBII63NOEP58FWHAAF6ltkuGpn19MXH1wD+e8SRC8sVWcWLGEwg
	 2J+zzuVdz0ptyo+7ZWSBVovkrNixcsCLPrvgd4ZGZTL/e68+aDT4iP5HE1t0ssTOzN
	 Seqcg0XQ6LIPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51361C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166472585332.16888.8386559581785199374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d490ff6d3d0dace0b7d91868b7d2e4ac5bfed048992fb7f86c6ad07460d0a6fe
Date: Sun, 02 Oct 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664725853
