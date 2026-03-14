Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E7817B43F
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773459294; cv=none; b=immypaj+tJ8UAGk/JRMOHf5YESxAhzh1jghuNG8ttL4Oqt/kVEBWVES2kVlbDtvt4ZjHlGNrhtPwxwOSgLmjEfcItR7fTXIVBLzPPDOJDtG+C8ChJNe8X/F39qRTMbs2IcMoPBgG8DMD4h9cxB4NrZA50Qzo3PmGNMhjeozgvmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773459294; c=relaxed/simple;
	bh=k1J3gZEi7h8THumSbtMBaoyFn7f0on+LUyniLacH2pE=;
	h=To:Subject:From:Message-Id:Date; b=ZSJ1PX6UfiiiChOOdR69r26B40Y4TSHHajp0w6jZEJz3KzzNDdEnE3Ku1ve1P7V2+YRbOA7ovkKT0JO/vxLrgO26n289fNkk37og8z3TW5sfsRdkfbuemH2ZIltT9iElhK5hEPESxsR1B8jDvykAklkRM6YghET6YR3fhMAoPXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+ojrB1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+ojrB1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7509C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773459293;
	bh=k1J3gZEi7h8THumSbtMBaoyFn7f0on+LUyniLacH2pE=;
	h=To:Subject:From:Date:From;
	b=K+ojrB1RBHnEc20ckXbpZNrEDHKdcpVYG8Ps2aLp7pA+/o3gTaEGPty3GJjQk4iOM
	 IjtRc6Pkaa1y8Z8lLtu1I5HCfYDPafkg/7lEatDR4bo93xSYiIPwLpDLnw4Vp8NCUy
	 //G/pDX6AujBCgwqA8lYprUsnzSXW8RPX+cFgZN5Qz2AXkk26Nya0pAL6/gcgCsGng
	 nmJHAe8IUM2aH4fzELOhWoILpHkHdF/mHGIxkSKAhvuqVH/38Mj3WuPVQftkG7beYs
	 xuCcB4ZKILXTTKfgsLkQcwsSK2rS5c/NFCzk7W60U6LrQyGFzv37Dh0U87c1/s0gKm
	 6Oe0d4CCgxtpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928A6107BCF1
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345929358.26650.13685122753697961257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0158c22d256dc804390d0ea8973cf8d408d45b25f004342c24c21161636ffa97
Date: Sat, 14 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773459293
