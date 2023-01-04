Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03633636
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96BD1C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672818087;
	bh=BUuET87m4fku4nUEFTdOs3/jR3G322JzvsFiLbmSzC4=;
	h=To:Subject:From:Date:From;
	b=EI/KycqOc2C/S5DDSCBZQxAq3vwG4/ZYiZQEOQMTEZDpmzkYVo++RqB2tONWAALP+
	 TL7hDaX4x6cz6pKqFArHQqI97KUrwTyrobxVhjXMBSlg9WCDAqwvecOMpIkcmg69qI
	 Dp9VjEXEv+imGgQryyvgsFmTt53RiiCVr72OliRYbO6n3pcA3cbydAG+gpONF31kwN
	 TqgHmGz4FHjgq1rYMql8TmyyjIgjTDAd+BvrBhyGyB8tlXqvd0I2mwaxlp+ySPvY4x
	 0+NVHJH9g+f/BfhwZVeCvNGdPjkn2LBg0GTSidGWmS/aDzUuvjJ1cE6BRryC6BjTVy
	 kqEutE9x6oRIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76175C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167281808747.18926.14254681270576800664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2f58c6f010b3e31acb933e6606c9acac76b62382e45cea058821f8a175d29e
Date: Wed, 04 Jan 2023 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672818087
