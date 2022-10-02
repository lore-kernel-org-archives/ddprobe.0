Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E5A15AD
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B2C4C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664674253;
	bh=W4t4xajYsYwmIEZ8yQ++Xe43HH+ZwUG3bIEO5cfT+os=;
	h=To:Subject:From:Date:From;
	b=e5f2KcUTerW+9dTC8Z3Pe2R70p4butEJ2l4bBOYVuiucXyiXUMfRDALQhDJw2JK50
	 9e/Y+NXm1xDN5USi+6HsTVPPmD8yNweFgG6ofMPcN8CnIo81gbj1D6hmHs3AKiz1pW
	 C57/ftBvWCYTF1kiockHTYag2fuVhgtQa9tSyBBz8ujUZvLzdwlJwx7ciQdgnuTlUf
	 PWeBTtT/QuXYbk+NQvCpekxqZ/Q1w/gY0ywWg/Og44inBWB2j7BLolvZ2r8k3GlmVV
	 omW2CHncejMFEIMCrEuX/2eahe5QSVGf8aE9H/SKaVsjpGbgRS/4ykGqIi8X40CbGP
	 psiBFYI5E21Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50728C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166467425332.14420.15264581752507889102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aacbfea57552b923b42dd8b6120585c446c5d3737249f15685f5acdc2344bf8b
Date: Sun, 02 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664674253
