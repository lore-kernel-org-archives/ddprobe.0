Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C36220E8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 14:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B932EC433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 14:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689343868;
	bh=XfZWHM0pUVWYHkSXT9cxHj4eTWGUWTh8C5F1w3PSoEc=;
	h=To:Subject:From:Date:From;
	b=aLiHzPIxyllDglGjEEtA/xJDpo8aa31Gtigt4A24k7/UImjP/QYLxPjjKXnHH9Z0G
	 z8VpGH3gYq3OzysbUzGOGgYHGXhdOwasLco5hGE9Ehun6WRxpNtBDb2U7lKgvNW/cg
	 A18O3oYjKmo4J04Xyl307yvDMKDfTVZCoDS1kQSgeLFBietVUjV+z16C0flfUt2kvX
	 y4lccwdup3zkT1adBwfx1Y2YeN4oQE0hUcsc/eA7kguC2HWqfzRW1rx5IenMp7bMut
	 l07rOO3Q2M1LdzFu9GRP9Ge2Cz2sj+NvNHQbnzfcUL7dRhjIpMr3NYqGlQK81OHS+r
	 D8sA+/ZCflLOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C98EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 14:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168934386865.18621.12489621089919613823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ad86c3826146506bf99f0c11d8803ea41d9d1b0109eb6fb1d276e9760b9bd7
Date: Fri, 14 Jul 2023 14:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689343868
