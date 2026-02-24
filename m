Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268242D94B4
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771959294; cv=none; b=uXpjx38A5SIpCHlYzX8hvcV3h+uUVZN50YZmObstiDaQQLhcmdn9XjIT1PrOp5OPsENGJc7iatD6Zebu8bi1Xp1JLo1q7M3hRfalv+3MAg0VHxSNsCic46tc3BuWb42W8TrLQ9pZ2rGXdoWM5gDrvuTATKS1ZJSb+Q76QkJ9Ar4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771959294; c=relaxed/simple;
	bh=dTkoI2VFaAmvYHlzXCMVC1+AziHqgCDfKEzpNeqNeKs=;
	h=To:Subject:From:Message-Id:Date; b=prEYThllYTqJImZWom4Z8MEinHvus7SFvKTo//+LnybZ/2Bkr41MSzl0HsgR7Rc4flpwKCXuBiceUBw/F6QGLgJ4bb2Dyl+9ty83YGVMzWKCwTUVU78wxPCpGz89rnnn/VE9qYhegrC1kC4FkDNNhC/NUd3MzmH5SEU7/2GG8pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6Vp6T+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6Vp6T+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86D4C19425
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771959293;
	bh=dTkoI2VFaAmvYHlzXCMVC1+AziHqgCDfKEzpNeqNeKs=;
	h=To:Subject:From:Date:From;
	b=r6Vp6T+orSqYjR8q51t6REmWej98P2CgqhREKekotmEfMzKof7YlSqUcBXTLaRso4
	 o7NPo/IL9LDsHUaYCdSMPdm+8mc0tmhqdRdhOp7IkmaesT56Lbh9IRAfxjg2yDJC0V
	 uivlQb61RFjwMS96GW4UUNkzJQOWG/TSOaRb7UydFB/D6wK4zvtu8ofa9fgXJdpP+g
	 GpQ6f/WBxSqrLbLHMVk/aN4u14XiFwu+mEhfbXIQ8mYi47PpiJ2peTh8i0BjlcmyJZ
	 Qr9bRkWlVP2gF46Nqr5EGngrmZtC/pPFfMCK5CzsjGQp2t6KE0+nub/6RJ6hs7XfPd
	 nEhaNgn39ZIbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5F9F4BB73
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195929362.16908.16166588830311717497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e30361ef7fb858a2f2e99f55870dc1e690df5ae451fe5555d19f18fd9836da0
Date: Tue, 24 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771959293
