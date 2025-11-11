Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DAA1548C
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762874994; cv=none; b=U1GWiYTLisWY5Scr103Bd7GVCwlPW5CC4K2mF9Yi4KOiveMDgsJIXCeA/zu+ZXttTunYAISFnIvaylRHt57WSvPj/hzWgjaT8EUKjL1DRZwpvYrTbftByZYC1KpI61ClLH5X0S55Uyt8TJURWZ2FSOu8b2W2qDzYjhvufRaEVT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762874994; c=relaxed/simple;
	bh=OWUnh5EiCFWuU63kRT4FtkH8iQ6miGgCuc/hW/gK+lc=;
	h=To:Subject:From:Message-Id:Date; b=NBD+hrGAc0W61eq6TPehGVqkjt/mFNYjEzmW2i3TvVAC7MRGMM0/bIGV6oi1HPbDTwz8t900tWiVMxifGg2fy1GCX3WbAC4P/u7aUBM4b/P3a2Ypu08wKabiuS/VpdEJTNqKgH4Rrvu4nTxOvC8Zu79PCJI1ArXEaKHa/iPdJic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+tYFxSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+tYFxSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB97CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762874993;
	bh=OWUnh5EiCFWuU63kRT4FtkH8iQ6miGgCuc/hW/gK+lc=;
	h=To:Subject:From:Date:From;
	b=n+tYFxSkCeNNysGLYc7SS4vJ1+M1Lf4j6Q/RQq6PFo3kBdG+RelIxI3AuTsb3EeWv
	 QcTgqBb5PuB7m+eJwXibHIJizq0xr5bK8TSVGqZXqr9Yb9lHeJRlrz7/u5WSp+j43Z
	 sk7ISMt/Dw51dpG8hPRbDPb/0h9aE1uwg8HG3FdsocnOOFsoc6l/amOw+2bRW1pTUo
	 4hbnjCXHTUsdG5tFype6tR4l0gAmkdgoDFzg61pQYNrZZ1NHFdnc2gg4tvlvhFDhs8
	 WKLjYXhlzFIQzDpIc9eYGxQj+2pP1VOnDHwzXWAHTh1Rhzuq2Tg+Zu92lNDdFJz05x
	 EqubfN8poCf4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996F1CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287499361.7660.16976815381541769032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b50240498be962bb1af4d986fff7412f15265d716e8c656159dac06c9a252bb
Date: Tue, 11 Nov 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762874993
