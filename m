Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDBF928E2
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB6DC433B5
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667820054;
	bh=LuuabpQUMPoqDcepn3K6MBAA+XJDPCUBu+Eox8vYUv8=;
	h=To:Subject:From:Date:From;
	b=tU7PXoxqNrpm+x3pEO0I6hh+13y4eDnUT/UT86DSdRAGeDM7RTAzip30LknKaaLto
	 2iEzkHsjE5tjPLwWqBwynqy+tpj4cCg+tmVVQ5Txw8ppxmHwX3DPXQ3Scd7CvJ4lZ2
	 RB/DKsw2NfA/QdgC73LyRGnO4KT7qWkIO+0JTOUbqq9hmdRs8QhRAy4Zm42KteFVTH
	 J2OJ+Ap1Fk6WSIrjFIsjIULa30IT78bkTO+yYbKP6ETemj5cMizhEhQv/rl5vA5a+t
	 rTWqivy5AD972zkkc83Ks2n0v/JbXgWzV4+b3mdQoX76BTk8LJtdpO0yd9ng2Pd04y
	 gjV87zHMPcpIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 503E8C433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166782005432.11379.13640105696859167303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f0988be99e427c2d97594bc5b2890990d693be879cd07ba01563216c25a874
Date: Mon, 07 Nov 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667820054
