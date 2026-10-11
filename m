Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FB63164BA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791712834; cv=none; b=Pnnms8Hr/rnviUJNTCwTiFMeuvZurlPPBV9VrpN1OZeJCVPt+88FVHw1yVFYuedtSnC/hZMaWaqkLfeXV0JQPuyGes3e9hBtogO1/lTYDwGC++NQi1nGrBPK1C8rthFl43XZfNYFDz8LbxF+erYJfDZx8GcLVZWkXwg5dGC2/z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791712834; c=relaxed/simple;
	bh=6+FsJjRx8PMOWVIXvYh4LFJ0XAEJoPZyEA5Lp2cY1J4=;
	h=To:Subject:From:Message-Id:Date; b=eI6VPDwKUwhLDzp7ZzupqhYH36eoCAiLG48K/5f/O2eBNXF2Dg9m388D4Ofc8JJtxxoEvAVDNrvww4RfzeTJpS+PNMgD5vaMVuPa8gIwrIjslOCyA75kGPgA2n+VtGlTH4Tver5aI+gy9BaXQeChg/OaxjqfTDouj0ltdu+ginM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFYwW28H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFYwW28H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2FD2C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791712833;
	bh=6+FsJjRx8PMOWVIXvYh4LFJ0XAEJoPZyEA5Lp2cY1J4=;
	h=To:Subject:From:Date:From;
	b=EFYwW28H0f32FBaCGd6kYpWXuXaMBZ54gxLInEL/AxQ4pHytk369ENamCR4Gn0MXq
	 7yZLnsVpqfMpsceJ5R8G7uJQpls6JGmSFPXVlbh8oO19Uu7cuNVe6/bD/0HQjirWMt
	 XXsq6tJ6WNE9mpcQQxcWN+pB/isKvFte19+oT1h4n8WOTgwF7HPGf78/knepuxo2cv
	 m+zJfxAa0GFJGzS0HX/lLWfikFz4ZVLVMrB46v442movLacOUOgMt2rwIsZR0KxBwB
	 8iX9miDOJCPCCRDKn7ZLUS+OzEur5Fv1+1dnJJJ1b9J7GGBT8jUxGI942mv+z55sou
	 hA/TRxIzfUVwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8179CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179171283371.21084.11419372242857463775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10692c6ed93a5ddce9e3ce7e4690683232520c4059c420f9b629cb58a92eb65
Date: Sun, 11 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791712833
