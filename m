Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFD7120E3
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 719E5C43470
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665639053;
	bh=CJJhnkc0IpnxzrQd8gzHrV5yRgKpyivrP81EeN6m4Qc=;
	h=To:Subject:From:Date:From;
	b=g8x2NArVnhPM3tBDnV1xpn37AuERnOkmLNokoFxgRrY/fr7ol0R6t2ibFzFvEpOyP
	 yKIbWhbBZBWkNuDAStNlfQOYr531iyNqgdaXjWwVW/KLcrQP39cnA66W30koyAj+Pe
	 aLs2A8+l0PKiVENmVasUHqMvIu3CzP4koHMMA2gfbmLopDTxjJXXCNo5h42DYREmnl
	 9E7gwPbt3oPUOfCYrcB+DT4ct7JddOxq2IPk2aj51TdlK40ltRdLBGUC/0BOkog49L
	 Y3uAMsTcQLDVFKyvyXiExhbziHNgtJg4I/MKCVLzuf/0c3vxjQ19spwiY2s6mrrB5k
	 xbuoZ5bJFjwzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5619FC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166563905334.30818.7821544040289785769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9e311a16693d81042656320291f8e0b07c30d14b1aba2992cf5a55968a7332
Date: Thu, 13 Oct 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665639053
