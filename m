Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213401C3C08
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765290774; cv=none; b=j3RRpAc9yS5KQ2mPvLgougECdGk3jTp3apzSLM7zA0cFocVmwf/bnW+Gccj7t/Ey9+vkYyeguln4WEsOC2Pp7XaPXkw06yC7AOpaKUZJQJzAJRAdEd+gSDy6w8/0pM9ArS/k7/FE1HkLgjPRQ8GHzqHStL5QouRtA8Coh9NG6Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765290774; c=relaxed/simple;
	bh=E+CKl7Z+6DPZ750xmYf8avmefBaWJEDxqI29j2JmlRs=;
	h=To:Subject:From:Message-Id:Date; b=nWoNr56R2inN6lcKbd4bvMUYL8jesGnLR58FNLwfapgCvvxC9YEsvyFFkt8hkqakI/gWQiQ8Dlb42l5ZUIvpOeYrRj7kgDIVmc9NQvglO+lC2h4MFecX9/B2Nwhe6Y92Mjcagj+qIX0i3J3qrIIeA1S6Y/4MM0lW7gK98dmKGUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYqBG71R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYqBG71R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5D8C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765290773;
	bh=E+CKl7Z+6DPZ750xmYf8avmefBaWJEDxqI29j2JmlRs=;
	h=To:Subject:From:Date:From;
	b=rYqBG71RKcB5cqPUrnTlAdcGpeyi1ITSlcfUsugwaiFjYT9rQ+CPBb/cMucGaLN1x
	 mZXc48uGrIhaAKWfNYNo6/nr8ty4Rn2jmZr0v97vFE4sRYu+uo6q05il9QuEleMCjU
	 Q0bE3uF06JDLJMJjHa8fWmbg35wz/js17/0Gu11f6VOlLjF7LnvBOGQYEdlXqgt8gU
	 m6irJcqY/sNh7ibE90Fax6dM2udMly0+4yojSlJCLlmsg/XtQnzX3jgNdKU5+1faIg
	 UIvJkorLmgRIxqrEM8JQ6TaitYjLPp1vygq9kc78XJ5Sm6+NRdDRCj1Sc8Hersr9Ig
	 +rkYZpXqWI2Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903BCD1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529077358.9508.7665079976078989467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b44f93df32e8b3ee38fe73d60e04e1cce56600e524c6d5a0706e650da38b1d
Date: Tue, 09 Dec 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765290773
