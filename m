Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D261885A5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753126793; cv=none; b=gaBtqO6QQ8svK1ByWOpBg8umSWtxeQxjvx3wcahiyQLHJKBiH3srlRCsNNuAPgppknz+GYSsvsRIRPy9klP2FUWn4s00XuHkHUrtVkBhJhM3/nyb1yF43r89QMwtisJWXtmL5yfzIe/VWTVbgRtpGjPbLtIrAI09/y5wLpLvB0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753126793; c=relaxed/simple;
	bh=8ZZjWBqc2VsMlD1k1GYqVh0zhAV6q3RRJXmlgRgfdBA=;
	h=To:Subject:From:Message-Id:Date; b=JK9hFQ3Hx4tqc59AkBzoiScPHAOUgunzbD+RxGFXYUNwYdl5CAcLCvhiMN5xwba5cl4UyQ6pPDPNxTPirpOzWN0pLn0bnk9Pj0xWw5QDsy6EViH3fsuWGwy9dT3yOBmRFvLuWAhPOjPdSHsE60qzRN4sEiVgEsiIpGTErI10WS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7a+aJV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7a+aJV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6EDC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753126793;
	bh=8ZZjWBqc2VsMlD1k1GYqVh0zhAV6q3RRJXmlgRgfdBA=;
	h=To:Subject:From:Date:From;
	b=K7a+aJV/RgvZNO+PsSF5BqiafAk4T2dD9MrlMk0KWYsNJFk5F3tl0qD6DExfMBRSh
	 V4uq2m+wea7bGauMXmawgZw+3Kvn/k7Hlp+YWjdupJmtdkkVk08olUIe7tYrpm+l4o
	 3nvo0+MzQLzELPYKNKPvP6w+wIxFMW8WvhS6P+Yok7FiEY2GkV3a8aZtzdbs1/UuFO
	 grUM3H1ABYRRe+YW97/ZCGhrkJZM4/sUBrgT12oGObbB2usolXuyLhthOKDxFG+b2W
	 heRsLH94wREuX9XzA189z2eLXkzDk1cZPPEqLA53saWbk2QQ95j23wfmc/BZz0B9XG
	 eC26lLMugq8cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFBAC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312679358.14794.7520110675218957937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda85cfee97fea535ca27a8f646ab7a900093886d81345b2c4ba30a29dea0d77
Date: Mon, 21 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753126793
