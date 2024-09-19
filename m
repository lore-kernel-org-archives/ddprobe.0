Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40ECC1CD29
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726704954; cv=none; b=JBqtbV/VIIGuyW8iQX4zdE0eOq1cEOd7hxxEpdYTCVN+UfR/3p7YEM87W2nZD2aPQbXOKx528CCiZ51bsQLNUdbC3V+qhHauOz9lhhbxPRQbCRgJqa8F7d5yVxLES+LuutuCsPJ5yfGcvZpiYpWp6zy8huJduWnRigPDQnvPMcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726704954; c=relaxed/simple;
	bh=8T94NbZfF4Xtmv8lE/ujrx5B7G2/aaa1Qmoc5+OdPLI=;
	h=To:Subject:From:Message-Id:Date; b=fvLjWM7L641qWtVi1fAVtz/wwqTrYYHj3d/IDvaXNOC3SukjxKOoNmGtgc5DLKWgxTzOtANOQiaLdZBInMHLgxIDgBNZVa0pKjbNTUKdC9HYwANtBvXnSUMndGUrjPQByyc/raL9z6v7kzqCUW3PqCNPRFlKGgh0bAM2u1QdZew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9dxYCdl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9dxYCdl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C120FC4CEC2
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726704953;
	bh=8T94NbZfF4Xtmv8lE/ujrx5B7G2/aaa1Qmoc5+OdPLI=;
	h=To:Subject:From:Date:From;
	b=F9dxYCdlz0xWsbf1ntXjxhjj8k9Re1nvUmefL2IESXMbLMhkZCl644B+abWsVvtTI
	 gmlAJ1uEUl3I6ynDnMWsF+YYI39ArbxuUHap51+F5czjGYoBzKqyln19nK/sGWA7Bt
	 FVqDRoOibVyD1Jun0BKqxx3uzWJySLv03ygB4imeatmbe3g5VyuSd9Qzoan7LQ/C4q
	 rkheZrRWW8ybxKOJL1c565bYarPBzY3C6dZ8Cni7IWXFD+vMTiUQFmDsGxaYauUJWA
	 RBb5clj0PX2kITMhRiG7Cpkxc5jaltUvep6bqE7AFFZZ1dPYxBua2sEhYu415uXUd7
	 2z3HgT+z/UCXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3B3CDD561
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172670495369.14668.8980961422007273292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3b121669168ccda69be945495daefb083248cf56a136582be3bd0b6a7586ad
Date: Thu, 19 Sep 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726704953
