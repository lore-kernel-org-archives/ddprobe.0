Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E503D60
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3D5C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666282853;
	bh=gmRmvIE7d/vPYpSigU0wpHHx/mXgM1v2F6NOojgv9VY=;
	h=To:Subject:From:Date:From;
	b=R8Jb62i/5DxM+JX4Po52pPsC0cRmPMuB0vfnREhe+PTkLWMqDtFdldxz0mkQkvUMx
	 hG6CQLADeUinhtX6LSW0Ej3/Ru928kA0Xok5uquXoWOF1u7UMlr0NxPgDx5QYhmX0B
	 hqtefDcmlLzeGB1fLL+pKpRZMvT97F/L+UvlytGxuVaZtPWxr0PmYd1n0NOcolXTfR
	 EX81rxN5W+qhdnaTxCMBfVWpX027nK/5TLJiMjckl4uGQDVKwkVeF/ATfB5yUDhhFU
	 jsEp4YiauLMo6ISqHLJz8xlbItIYffBOaIqXRZ78x1ocok+OwlryuHex1YcfAU15qS
	 Vx5NWOaO9+LAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C34C43217
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166628285333.25597.13640175832244680829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66872d09096990436878a335b67c655e9a803929c48cd897595d5295dd120e76
Date: Thu, 20 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666282853
