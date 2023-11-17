Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA9FD537
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3tln+rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94C3FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700204896;
	bh=K2CRQQXtB9uueta139atK1G5f7W3T2EDXpeRZRW0xK0=;
	h=To:Subject:From:Date:From;
	b=l3tln+rg2Q+F3E6MOCSfiH1R5h05F8GlhxwbZVXnepV/rbW2ZMi2EHLtc4hZ21dUW
	 Wp2wGkTmL3/wly1co+/6At9UnFJgCe13C0JQLsOZVNYPjEyY70Ihzmu5r+I66lNtuZ
	 jCtT7hqBNcUDiTBA3fM6zVw2u12mqz46Mylc9K/Uy8u0Kb9coDmd5zHgWgysRcD1vG
	 u12KQKsyUiX9pYwkQCOAmorPqIu+HymP0tsU5Nns08w4GBerVOq29lKtN/Veb2JteO
	 bCjOxHMOU7GhtED1ktqfJ2cq2X2K9s/qdC5RqSKfZcRpp6qDEEpPwXbcQZjKfb+S/E
	 OwYpSPDRSS3zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A76C197A0
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170020489644.28606.5501220302760024290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33beb12dc26b8bef0a4dd44683e0c63fd4b19e6eea445c39b5c20a191a8bd74b
Date: Fri, 17 Nov 2023 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700204896
