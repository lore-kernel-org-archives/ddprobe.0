Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B6F17EA
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 04:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D54C433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 04:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685939345;
	bh=mvREdaoLw+bU3p5ZPtoY4BwR2lwlLlrlVtJh/8yQ4BU=;
	h=To:Subject:From:Date:From;
	b=p3tFunXJJI0nMRI7ZKQ5qTDH/u79siGVKQxEzmSfG9RyHfHGAOxn6DJAKNJJ1+Dxz
	 vYPRh+OLRuHn4uVwq49HIykLrfWDwsUuF2VD+Qm3va/dJ6VZsDJUKRqsYgQpjAFbE8
	 XZJvfatCNsvsPcLLkEwJ8b+jgm/AH3kinFigs7NX5AYQLwnlCCjxOhlyVBU0lC18DG
	 rLeLt3R/0jgEZQnnyKkwE2CpkXeXA5Cjm1R/ltQ8vKXURFt3yVBcOCdFFabDUT48OJ
	 6psm/CSnql05OXsdmrmoMTeoOrHXV91caUWJE3uRn3aMkO/3DhxYsKAWwZdx24vp5l
	 ipPZRHQIqK7BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CF0C7EE24
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 04:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168593934575.10735.4256300965153614971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5ae24920f254b7277df07fbcac014cd052c4760305f6313f1f83f32086d4eb9
Date: Mon, 05 Jun 2023 04:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685939345
