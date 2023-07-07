Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557102F28
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3B6C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688774228;
	bh=lx6e4Lm9yO8UfCtWv0lckE1w+VrqlR8dPPxQK+sEr/c=;
	h=To:Subject:From:Date:From;
	b=Um8l8c56B9fHZIuBf4YuemUWL9fDRtVWvtQxb07WMljrDxmnIn0FounZWshj3t7jA
	 Xo3AFEWJORWS7an3D3cJQH/5CdpNHu2pHeDJecJnvWc8Zz4pikoeumDCDmkJ62wDFA
	 UpnkoFRDkgfZgtJ35EfmMqmT3At9rVWxMdS/Uxvdl71cWqDYBM0Y37BlHDL0xer/lS
	 jYU59XwXbgFW5LtldgJ/5vCd02JXhX2BW9VK+JbBIlUbJUaFMHNZidIw8qlf4IlbPx
	 /zrTzDW2EZvfoCINKYT9oLSKdw+HXZFcUD71B2oBRNNP6RfsC7Ddk3WJaUB2inSlYX
	 JLvMpKD8gKnnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7C8EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168877422870.9749.4974369735602002204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dab55f3ece60a52a1554c018090d17d5c24e27ae64616c036bce50feee61ed6
Date: Fri, 07 Jul 2023 23:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688774228
