Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4221C1363
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 08:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC539C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 08:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677833165;
	bh=MJ4MDdwskW3vri2T8oSus9rWdSAgJFSfUn2ucHcgmXU=;
	h=To:Subject:From:Date:From;
	b=uOQrI8fIeBkL4DQpJi6FcYiVLfqsKgAfLa9ILHTCBwZp61GwlbpTE3zIYUYzdfnaa
	 dxUgG6GVamHbBgJR5Wm2iEwKPkliZvTC9ZiP15TQnDjj61S8V7mcSF/rntR6PlGGTr
	 eP7yCv3vDCAfccMsIv0JvN2bXBbJwmB0x6JIsn5uDzyXUypLxXvwW8C/ld221jBdWS
	 WGZFmq9Y5POKZ3Jh4a1UA00zm0xu5mpV6B3FExs4k1F6ikTLO61/4y55awj8yJFITQ
	 y1X+8TK2fe/BS5nNrEIYpfTd9C5+9AlkE6W1LwG/dIKixMobchLHY8lCoSL+hu2nN7
	 hzMlhlmMc5jkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C212DC64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 08:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167783316578.20681.742031357318429502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6295ee285acd38559b63da04050458728707c106b277aa3862a54717f1cb14fa
Date: Fri, 03 Mar 2023 08:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677833165
