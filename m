Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552FA23BC
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 12:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03DDCC433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 12:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677932226;
	bh=SRRtEW6stswliMevfpjJrGAsppkCs9H9iem3cOM4DnI=;
	h=To:Subject:From:Date:From;
	b=D4DQ1OXvD45RzKnSeAj5Ym1di3GNOyoO0YtRcDGIfCKqiWVSGpxFcxOL1UrTG+kfg
	 E9eDv7gZrwibLlsNHsr5e2sZ5j1vfZ2aT2Q7NfJPOpf0UG3VrvpMpTjITu8mPiwvHp
	 de4CnMBK4uupzLtFx2xJ+tNFZ8j9Fy7dGspblP+577IFNnJ2mQhjF1V9Y21xkxqyOA
	 Qcsas6r6H6kXArfqnyXTCgsH5N/UrwWXCVZZJqZy/QZVbu7sgazLle1j8S5Ha+Ji4+
	 6dTRkqfmNqYzzyEJLfdNFl6GTW8Lwmh/SCqATleyR3C5nx8LyH9zgJ66ALJFS39vxk
	 s4ekth+V7IJSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7AB9C64EC4
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 12:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167793222582.12696.16025757558881369698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf06b44eb7f3b7aa063c2a54668169283a46603109d49d54613888d8cdc696e
Date: Sat, 04 Mar 2023 12:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677932225
