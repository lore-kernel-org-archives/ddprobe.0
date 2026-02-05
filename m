Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CD73A4F49
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770282234; cv=none; b=uatNgR9B8Ry39mMUlcVuzF+4pYjEy10mbwX+ZF1D0yAOODMbaIWxB6jTldbwiKtXErJ9fIO/odumNuFHaIIEjUam1T27nOyP5HM2XcVo128nCN5QpOjoOaE78/sfj74A2xnbifiXMOrKc4oW4Xa/d4TosYmOH72B1MVU/UBc6xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770282234; c=relaxed/simple;
	bh=r2Pko2ioguGrjFusNvWB2kwOqFvZf2JtMSJ/nbc5RFE=;
	h=To:Subject:From:Message-Id:Date; b=CgDWl8b94qCSFqVBx1IersMLvrrmOjyOZ/3CiJ9dVFdZd0B7k+IJ8IXFL5iioXmdOsjdxJ9r6tEjWWrOBv/qDOZcjBB/6aQ9boapi8v/utVlavzQRZXjwKVCfkESEOqD/ZvbsqHtUIThMG6PB00ZmQM7TaKrbvPZ+WwB7wmkVyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZdUxahj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZdUxahj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C85C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770282233;
	bh=r2Pko2ioguGrjFusNvWB2kwOqFvZf2JtMSJ/nbc5RFE=;
	h=To:Subject:From:Date:From;
	b=tZdUxahjuqZ9LDYQs4wK+D1quEhVtwkrYZu2Jt5Iz6HI44V2VWRWar4Utw3gizsIV
	 HQKM5952al6Hi/0lPAtQ77jhVDgEUFqJGaaD3f9jsq/p8h1v+WU2TpJxpAx4zBltt+
	 n0+x5OyjfrXdxGU8ts5RCawRVOdOK9Q4WIkQFEUM9SC/l5EaVy/fAUzUzTNao5Hdm9
	 dbLPPFb+fZHhXRRQJIpOZmE20Htp6XM4aDnLw9um/knwdA0N8YEpKT7K+axwghNbZ4
	 vUEk8XXBO/jbMlUDjjljJHpUVNciyogwovmuJxR7sv/b18DuWVn/FcR4vabSYFdIpJ
	 akn/bA5JQGygA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DF0E91297
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177028223359.15797.18175190716781168315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee299ffbc418ee9869384e93aae4c6ec8ebb392ed21461283332b71f3fc12487
Date: Thu, 05 Feb 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770282233
