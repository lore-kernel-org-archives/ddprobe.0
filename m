Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B303BB48
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777444054; cv=none; b=PUXEC+6RQR0i8/li/HXbWzVyf+6ocpuKz7ebfgmcOOxb8/6D/rvJxwa4YpIQnmlwHN8EFrG7mwd4S+YGCSZNHU7VGqwHRJ9UCplgrTHlOUCGvP7hbOtucHYvKMY6BRb8ErVhrW/zpL/M63AYKjJt3EIZbgfrPb0m4lQWQtz4he4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777444054; c=relaxed/simple;
	bh=1X1ShsOlbR6Jz02+gvhv8sDcYVTSlOg2xSWmTyqmvNs=;
	h=To:Subject:From:Message-Id:Date; b=sy88VI640hWygnJcN2Inu6eFAzixUIzA+IEXl8mtfKMiYQWmvI16KfQSfsM3/a+ueTg/Y+vVZ45GsRtHLbTIO894tsZCC6ttdu2eHK3wCuYpHMhqXu2FeTb2kTfQnDf2lD/TSoZLIOQOCaR9GjRgSS2H52VR/baVf+0fiXNZO2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqGMgb3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqGMgb3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4B9C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777444053;
	bh=1X1ShsOlbR6Jz02+gvhv8sDcYVTSlOg2xSWmTyqmvNs=;
	h=To:Subject:From:Date:From;
	b=NqGMgb3vkHuMfY4P++q1KsMiQ7/TXTAGf1TQHDfIj6CfppAt4VpnejP2Nt7pAunim
	 auoxqpd9g7w/2HRnc70UfoFOu+L/LMn6k53eNEG6uvhs3Lj/4TT3Or1XXTa+dcKwCr
	 gwzWtnVV2Zy9pgLsx3QU7nqE+4KDmswgvpJZiw0Pm556rcfx6ocKtEeHdn4G4KzpjO
	 eRzPEVDKmFqLe32NQeCTp/P+JX7kcRTV8jWzTmgFUWq9TQ/ijryeXOb/5kHztOvea9
	 b1cjfFYPTQTEvjSY5V3LOAPxOy028EWrlJQpvlh3BMnDJ9BRl+swfgcdSNsOrObt0v
	 4IoXhcer2LqsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D6AFF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177744405368.524.13813828279983885285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26972408a24214ddd39f53b83c6eb167549de24096dd266e31e4564ff22043cd
Date: Wed, 29 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777444053
