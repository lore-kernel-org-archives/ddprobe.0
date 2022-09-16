Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C836333CA
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68F7BC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663321853;
	bh=IbzHET95UED6augVeW81tx4u1Ehbu+jnnQcoSBMQ3No=;
	h=To:Subject:From:Date:From;
	b=VUm2suo/pDROlOzI1XjbPZKBODc6iOP4Nz/rxd+keW0eXv+V7Wp5fSf/KmWHffk/X
	 LJ5F+cd0TjvjgrsMLwMzWaGkJOHnmh7WqDeHvysPyMEam9F5ghCqovUP+n+yGDDd8K
	 lh+FmEk4nP6jCAzd5/hYxWb89XRA32vmbxD3Pr4WzTxZ4/B5i9b/ODDCUG9cR2LtA0
	 nd7hylXpCXzPSWu7VAZxYRQKJu9LMcK9GilUenFlIV8Z+bh9HGN0mMSO1z0yViMkvk
	 WgYNodc7iWQ85lhqbCW1WOnJTMbSBXPdaueKheKoSp66LhL87rD7yTmhGvz+85fuZN
	 2a4dckuwb690A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B1BECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166332185332.14572.15494255719253667100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad3be03ce4f0cc72e4b6a1affae1f4de2f8d0fbaab91bb49a08421b327f25b6d
Date: Fri, 16 Sep 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663321853
