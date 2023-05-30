Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C19E200BC
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 21:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBA56C433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 21:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685483586;
	bh=AXFpAx4TSMwgwNyfGAU8tvXonofRLHm3nP/IsNLta7Q=;
	h=To:Subject:From:Date:From;
	b=Nk4fhE6H/wrvCtDcQfnN5FIJkNxlJ9eBQ9MjV5dd0mQDpMxKmy4Nr5Imspw7QkDKk
	 E7fjAhj55WSZcIvtuCtir5NEp/ZgADlW64AafyScIVG6lFKhxt7E8rHyYfvyjdMiVN
	 7f7wn9JNKfNppWw/tcD0XAi7dzSPWIuL9YNP/DRvdsN1E0QfxLQK0eLUV003ZThQRn
	 mUaVDBlIqjfiUi1iIvYs81OwPRSf3iNN7MYa6Yt6rL9ijp0Tw5mOpc20n9UQH0QKbD
	 Rv9x1UB+Kr1YGzWXv5WDdwibSPTiQIb53gQu+HQChzIEuaCXWnJlRf6D9aRfIzAMCx
	 TzEJ3x+CuXU0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C88A7C77B73
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 21:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168548358580.396.15811733310620438560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 609d2fd3725d3a4ef33ed0838510799c7b11f7e5e52cdacfcb64a16133291b52
Date: Tue, 30 May 2023 21:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685483585
