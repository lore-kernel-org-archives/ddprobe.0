Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6FF136358
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743113395; cv=none; b=pAYcm8f/zFRiKk5TzA8MO3csmgFAyYrYDHzWH0R/7fqlNQGZOFYHVAT0vp73e5LDoO8LxebgYSJ0zOJ4SSZjQv0Wkm4zMMDevB8eE0tXypeADp10TYB7ueYyoeiEJxVGIFxchodlTjjolDM2Whojq090LBj8Fho3RFH+08W3nBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743113395; c=relaxed/simple;
	bh=xxAqyaYLqXIhddTJ+7fS5OubY1Rg0DGLH++NqF7jVWk=;
	h=To:Subject:From:Message-Id:Date; b=GikOAr260kPQxYnaruvqnNm52rVTKEmZl4Yvj4HxFNtctxLOeJsO+FV9Q4MAIDIcgT1q+hvoNNb544HQvsLfEzD/BwL+Nre9JIpY9HHtFwSzGzZ1BZ+DHvuGp9AZakvvDG/0W0SumyUlxm4FWHCfKtCQniLQaXDn2JW7dU1f7ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yt6IWwfi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yt6IWwfi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF54AC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743113393;
	bh=xxAqyaYLqXIhddTJ+7fS5OubY1Rg0DGLH++NqF7jVWk=;
	h=To:Subject:From:Date:From;
	b=Yt6IWwfivDfbkyUeuoeDUHDcOWhWz5zJzW6ywBSMr/HOoah33SXyLLjmS4gNnHAwH
	 lsuYh43iI6DKhchBWETnv8bZJ63QRexenqtb08a6EQv40QTo69ohsydFwAvP6vGBgU
	 BZCdj7whCLHBvZBS/17/JlA3Mrtr8wpr3U24IBouh75K3qdrRSHZtpyGm1SsyRgDyg
	 bWFXLNEDgM/fosk8NsY5vjrdrw1RceVc8RHSfodvfhG6D/q/k+Mgw+OCpMC3huJ/NC
	 H3Jkxetmg4sTeQxW7x715mFzTCt7U3rDlaFSjJ6ZngeVc6K+i2KV9EOLKCpxNmt0ub
	 2zp+8TVbKC7HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961C4C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174311339360.31990.7976372746170360962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271242bbbd6e21e25b9346220fb9bbfe53d0556c01f223061a989fee91543303
Date: Thu, 27 Mar 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743113393
