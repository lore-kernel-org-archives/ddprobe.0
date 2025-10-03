Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115B025BEE7
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759502394; cv=none; b=exto/l4mSzPwPcX2drbTyEyrC8RXSe2Ks8KL1LP9ul4t/wcOwpR6LljGXLlloEEQD+ZTC+1uPCAo3+goJrLXa/sr8x2m8FSgWPvWPFhN48vOOiwS5hVVuz+/NdSKteeq9EyENuQ2x09mLDTm4aF+vKdwGMznYpuiSN1fGEOjWu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759502394; c=relaxed/simple;
	bh=2wf8UXtRonkp9kFwn2ERyvT+bxhZuuE1keAdXcRZY2A=;
	h=To:Subject:From:Message-Id:Date; b=qdfsz8vjD5/Ac6Qi0mYZ91WqKj9PXm/CTN1GsWf8AMnUJpnQ42W7gPMsHN8kHhiAVowzzundmVnDJPlCHI+H5QaCO5L3KIWXNkzfg60PvRTGjkQT5HP2QG9nVHjS3dh++igInTk5bR5C+QbfKgyEHb2KfH86+adzUaxcud6lPlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7uFHV2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7uFHV2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E441C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759502393;
	bh=2wf8UXtRonkp9kFwn2ERyvT+bxhZuuE1keAdXcRZY2A=;
	h=To:Subject:From:Date:From;
	b=f7uFHV2cEmRd9RcKUU+vYPPAbjXYz2msULiHQ1G99anx4XK5iC0ZX3ahWtH6nfNlB
	 RGjD0zVUY73KNGDkVIgI+WkY5jwFKEnhQDPI2jE4oi0MwCdGyEuoBNyDC2Nnbc5ZMs
	 dUrHcXGsD3M0/sn58aN0vKvENYW/DHWZnd9DMpXTWVXRXjG+ZF10LjIWPql5Jmg5TR
	 NoOUp3/8/Kt1Lyuj3o4czSy00VghYYIF6iKenln2WeWBhTYJgJnGjalhuzdZrL5bKv
	 2vOKLzg0f1nL3vRtjO4KEhPEP4RVsIREV3B8nD+t1H+XIWevAqqsLT6Y4HSB37uBV6
	 sitIs3Bipi+bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F31BCCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175950239357.10716.12248387683175080907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eafb64a9b0058108c42b8a29692d021046d7d99f73aa85ab03d34a37066ade4
Date: Fri, 03 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759502393
