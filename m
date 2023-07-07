Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663B15381
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 19:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9698C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 19:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688756828;
	bh=FA12AN1rsspprcdWorEfNGKgHSSdtsuU4bNCMXd5gMQ=;
	h=To:Subject:From:Date:From;
	b=vBkJFZKtUT5T4USYWSoi+zmZfXEK4uuYruRj9rmF4a0Swu+cWKV/eggQifmoYeysW
	 fh9Bg6Pj0I7n5xLk4xC1z8sz5kg+1FbjmCoe2g54Q8dO/Zrq1wRq96JKH65cji4+sk
	 OuaHq7VfKaGZoOrQdPySpv465+u9qWDm9g8tyI0RYV8fgPOA+8PFfMWZgLtJJkg+rl
	 SBwk53xHqMl+CsZgcViW3zAmM7J+3g9k6xsZ1fJ+NA31nLsgKNQv+K/dBmFZ/qYTdP
	 lDnjkn9V2jkQ7BGK1lzyjh/m3DU6MTqCw3FP+uDrs1K0wifiaczaFGaJiu8Mj8+yxF
	 WYRpKANA/wOsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC56FC001B0
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 19:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168875682869.32426.16706639699804147667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c4050d3ea271576f3eb9e05418b2af2004f6dc2e017008c636fba841eee0b1
Date: Fri, 07 Jul 2023 19:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688756828
