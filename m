Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2A240DFBB
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776628054; cv=none; b=BA25DWN0SH/oyOgDxpbfutbmP6Cjh1MxuExtucU1pUeeQcU7UQ4+3tSmzhJ3D5pEhXbeHkHT5acKcE0yEmL4IiIEgs80tSGmsSM/+mF7j8EmCCHXnWMpEmwwKGDk9Jx0ZMbzvb5JtXpnSgO0oTiul7GH8Zw/8LfQxbSHD4jkXX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776628054; c=relaxed/simple;
	bh=mUiFSVn+DyTNenhxs7QUYhuhWZUe5Tdw4ts3R56xsrY=;
	h=To:Subject:From:Message-Id:Date; b=jTunvtQiPIFNzh/rRB0P5olNBdwAMkhIS1LzvbCRS+TxOjsD/OVsBVQytV6PRLeeVytaBUDXRZM8YFRA+FoZTr3lSHBA+/xJTYQHXltuWB8oJWW+OwI97DNR22MZ8WDHmIcLhs5g2d3DpwYHQKTc1LY1yzfJH7w4vzbaunSDmYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeK4g6hN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeK4g6hN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9C3C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776628053;
	bh=mUiFSVn+DyTNenhxs7QUYhuhWZUe5Tdw4ts3R56xsrY=;
	h=To:Subject:From:Date:From;
	b=ZeK4g6hNCMAdfSCE/5tfJn//2RemX9+e/7JqY1w8KqjnqjMlfr4ul8SXstFCf2bxi
	 BqHu0ZU7Q8vk7WS2Dc9OFAMNYKuin3G6NGZ93U9IxEOHRkyP+zntzo0iTYloGla51c
	 eow1zEbZ2P1h2rzq/wE1eIBzcKBzvIvI65Rg6BVzAvDWMDjBxHe1U/B2Qx/yJv0S36
	 BaSRFItwOLzmyijGsWMVUxWiratv5lLGQW0D36yK4oDdHqOgleSTS6YZaL1dk6EM0u
	 F3t+EVRjYJxf3RxqoinLMe/4Ey0MnnKZKRKx8OjBU+FzDLxdiQAH6mL8Ra7AuZnaOX
	 okCAo0p85mdVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98D5EA719D
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662805368.24962.14977948302341971862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78af02f1a15cc06ff6d079d34b46933e35443bf5438645511a71eddcdd37fd89
Date: Sun, 19 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776628053
