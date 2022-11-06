Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA5323D5
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BAE0C433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667734854;
	bh=ChCPt6PWW/XLVDmvjAPyIjP0HUI2dMrpAXzg7Z/6lsM=;
	h=To:Subject:From:Date:From;
	b=FAMVs8u/Rzo/mBjgvFLwh14rQPxjyr2jMdACKsBAq5IkCkB0om0ROSdc14LqcW1IY
	 +77V3N52lia4IoBcXUOBukjTN6IuwxglB8J0l2BhGA0Cw+FA1YZJaQmlyVbGGFi2Ly
	 X7QwA8YsnSnRtRljihaBjPoA/cqyClTYT0UbAMbnqhZmYQWbygPtTFJ3TUSFoKReIg
	 zN1E1Ls3Io/wKra6hOmGtASzDQJZ41Mm6orpCtQ4M/bebvV05WXjCe6vyjKwxm2AYP
	 f5tuyOR7ARs51oUgOaXZSHhgg5p/kACaRw47I0mu49njvyaAKM6YZcaIudZ151OM5x
	 NASJjig2EP8Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8291EC433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166773485452.28643.5206076052319184048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02660daea4204aae4e0d528e9e00992eb9b8e5ee8443a46cf98c8c8ef763be51
Date: Sun, 06 Nov 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667734854
