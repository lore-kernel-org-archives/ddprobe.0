Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232B823D7C0
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759982394; cv=none; b=l7C6w7CrHXmxH+IO1bQRcVZbr415S0CbL1K4NobKLW+ehdnKptsGcVAj+/gL4C6n7bcNfzcBRYf+EcPyIz6gVD3ECjSRSXR3d8fRyxYuoE0NWRpTgfzKAalZSvJDYsz7Gv78yd9BvhoigHfw5o7R1n100xJKY94CqR0ps0bIquk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759982394; c=relaxed/simple;
	bh=YZGqYnmCrpgR47XtBMpYFbCxfa5sKDshU1c/+EUNGcs=;
	h=To:Subject:From:Message-Id:Date; b=rgOFRcq0HGYPU19vfuUUjp1hdemzTI0M60SrZTVEOMcaQHxGGUERioMLxqYxEyFCk15MBUpFE7pcoHIeCd1DsQwb9cS4s9qOddfI/OjIUpSGWm0PKe8vmg0mHV7ZWr3bxyM1mOpBjpi7LpYR94i8tJLSTy1xf6qF8XjC2Ydg33Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPaJVr7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPaJVr7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA60C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759982393;
	bh=YZGqYnmCrpgR47XtBMpYFbCxfa5sKDshU1c/+EUNGcs=;
	h=To:Subject:From:Date:From;
	b=IPaJVr7pALShQyQBd3bYQyZgBmQEFB6cDYhOEjQCfZZ/Wl6UxebekHnaWjd0EWx6o
	 eTp+RCuvMtXO8i0Sy6QNI9SqzUeKtV591QuvfWo5CqqdS74EV6AD1e9jlCQ4lXCL9W
	 XU9APOhTePLOEd/4/jDzUySgYlrn2D491WctqSB+D9SDvsuiMiXrXQXB3PhlYEKopl
	 j2/3pNhJWTLum9f/hIxengvmJl8OWbu92o8Jm+zjI73it+hVHeuwTpvssOrINHg4Zh
	 NPQ1IKP97mHMk04AbuaQc7FHa8n9QfCnxaYn5g9nfPBlzdcikiBSE5X15WstJeMxnK
	 nv0yu+eQTXfkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979ADCCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175998239359.1416.17892585379494373479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e496cf0eda1853951dc63b140321d7e962d64e192355dab78a96ad468f270b
Date: Thu, 09 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759982393
