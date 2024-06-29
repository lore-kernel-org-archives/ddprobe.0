Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2634253AC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719626663; cv=none; b=W5qsHdVpFSAl07DL/wCeekmzurXoFF7o2hk/ueN6LPRR3TMO17a7O79QX8nNZ6rDZlF6DCRnzWHn/gH5sPv8rNEE4i2uwmV3A6FN91evHjgQNYTuhMDrOvlBUy3Lm7tZBYynez/v8mgnKdsyZKbW8647J5ZwEsx8Fr+Mk/jry1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719626663; c=relaxed/simple;
	bh=LSac7YKRT9cxIGHNOBedhyyipbRwhJOGIChICNCFv8k=;
	h=To:Subject:From:Message-Id:Date; b=HBZDFNKKn7pLVzf/6Yvw2Gp31nNWje+Wb5yQG4YLwwALlSQ1AdCWOvWLr8dRAfxE8S8o6sRkDOWy5liwzUUQLbKKVeY/vjv2MhSfMtZ5x8tLT11aL6l7GXVeyLcLh9F9qjPzMq9WBTvy/oIQ0P600sNY80iYtZ3nbjFxuA6zxYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0T5KHxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0T5KHxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE4EDC116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719626663;
	bh=LSac7YKRT9cxIGHNOBedhyyipbRwhJOGIChICNCFv8k=;
	h=To:Subject:From:Date:From;
	b=B0T5KHxEAxJDQCo8r7YTIOOmO3U6+AAJW4A4bLOCEFMAU1h/VNbK1FrUHcNS55hym
	 9BifZMmuHQSZ/fjoeoFpWIAuLnuz+mjamvwaDFMcTdTxEaTOTyQuBzH2c312HgGPkA
	 XRCwwWGAKCEOZUTQ3M2J5/wkv0xbxxrpEgdDPZ0eV/EwlkBZf8O3UnZpcJbqNN6oPl
	 Gjroiissngt4RG7GQ7zVwKF6WQBLsxbUzWoZL432rwvIVWonsHp5tyVXeh5P9gE6QH
	 qFLEoDyLELMy9qI6lVrf1yx4y8tMFrsd6JuhxZnC+U0DGopPZJwu/EvqN+I+Wm4p1f
	 RY2RnkNohVv1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1F3EC2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962666280.1369.16171815319469262157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2529793f16cbb42786afa43e5810c94a4f6b7a48d60c77272998eab7c9198c78
Date: Sat, 29 Jun 2024 02:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719626662
