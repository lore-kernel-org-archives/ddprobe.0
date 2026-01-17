Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1BE18C02E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768624434; cv=none; b=sGX4XBPb+Jrf2oNRoDMzSLqVFOamc6YCaEEVo49KvIKmrkXa+8SFyq1TQDGlbN7XXe6sOmSW/5TjqngCqNItZC92515d1caGJgV91Lv3Y7teyzMZntc4cKW58YBGDnXrMMqzQ2L7fpiAF0TywaV6+ja9SZev2asqAVYTGU81k2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768624434; c=relaxed/simple;
	bh=aDf8ANP0o77O0SEoY6B90dHKilmjwyU6odym0HxJl0U=;
	h=To:Subject:From:Message-Id:Date; b=GHM2B+/pUD2yLIFgZss1AUlwm2L3uVasDZyBLwN+mBrUazqxn+av3Gn7Q87cAY4owCn5hMRE7kt+lfmDNXPm5WgIirgxuKtcSvnM4jbXe8A99k3xky1h6kCaPVtywaeUMx8HjJTG6mpHZn8YoYbukaSbRGoY/Herm/6rvfXjgDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/Gj0nvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/Gj0nvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71F3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768624433;
	bh=aDf8ANP0o77O0SEoY6B90dHKilmjwyU6odym0HxJl0U=;
	h=To:Subject:From:Date:From;
	b=I/Gj0nvuwgbwX5GrAwXPlyqt8aI9fzLhZ0eDrsA7EUHBU9OECENwCBPM0KpYvnkeN
	 3N2BGZU+zoUSiG4Z5voquTAN3+cU2RnjR3Stmwg7dELv1MfE/3hn3Hq2ug+Yfiko+2
	 VmLQq/0vogYpZyPhtt111SockDaAuc/WEq670TQZWzP5Z9fLWw5N8UDxcl/2mCRVef
	 62z149udxzVkCrUc4U8v4xPQRL+2wXRBQGl/LnCUK1mNWNhw75bBEP+2inPsqCp7M6
	 CURO1kf01lSpCCSpzRxUtwVZAe6A7yDCQy5+ZWaGZpFwY15Sx+SPByNNr4EQdwntui
	 2s5cZVjjsGhjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C29C98313
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862443366.14562.7137939673595888689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f818f484d96a80875e458a815169e0d279cdce6120abccd79c231aa996222ff6
Date: Sat, 17 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768624433
