Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB5B4A07
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777412854; cv=none; b=kvV2Yz/mMZqZYuj8ndNSKj9LMJdNh9gl9S78j2Lk98W+sfzymefpcy9LAEIRPgX1P1P3oF9EtDJ7KOq7u0PFUr5W6oz1dW1qIWRM3U9kpz9HrXNQv+ToJxnBaDhuA2NMWw7UQz/M+X1rSc5i1tiwzH9LHSU93E8JlxFqHBdcTkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777412854; c=relaxed/simple;
	bh=1rAU2jhbzfO9BKG7IR0bm8V/Al3Fb623WtfaFvLVSg8=;
	h=To:Subject:From:Message-Id:Date; b=I0BjPDU6GALKaitpNB/LMLusHD1y91ord1qZ5t0L7UoUZbTzGbiSfOCsDfc0xK7xVhxx1F19h5teOVDn8L2J4+Z3M6cqxaFV0WB2ZUQ8yU6yswLtii3W5xeJgpKKVUQkmKOkB4DIELxtAojbvEeOADldVyqLoW/1RFz5XRsysJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uH2JRyZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uH2JRyZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED89C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777412853;
	bh=1rAU2jhbzfO9BKG7IR0bm8V/Al3Fb623WtfaFvLVSg8=;
	h=To:Subject:From:Date:From;
	b=uH2JRyZEWveMU43xfBXdKmwxUa4pU7ZlS3maFKcBSPl7LBPPUIrIBSLe/FP0DD2DC
	 dWQ6AoCoWlW5nmRdJu8macjYffYWu19pK/Wlk+7PBQ+d9VJ9ilDfZRIIYy/KSFnQYe
	 /1Ya7gty9+ciU/iFn2WWObRujg61VIhRFNxjq7D+IujOZ0V/ILuF0tak2AHP0iJhZN
	 tysYd4VtfSyTVbtbAdfXViY4iVN/GeFmIuhsfps1WdolRVxbp0gPiPeumi6XP2T/o4
	 Da341Gxoh/IeFGJmUsEqlQVwHzaBvxXrGqyd7K4Ltve1EN7iBh4yTuPxlJL9/mLAmA
	 4q6GFnqza9anA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2FFFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177741285368.31271.2280734408236150625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7212915aa60eb01648096b6e53dff8fa7260c8101832925407830ad86b3acfb
Date: Tue, 28 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777412853
