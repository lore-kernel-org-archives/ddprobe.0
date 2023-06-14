Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DC817E
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 02:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E9AC433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 02:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686710828;
	bh=fsX4U/Wy5DlFNf0PtJ/R4TpErymR4QVTn3y+LkxlUFk=;
	h=To:Subject:From:Date:From;
	b=q1opoMmIi+IriKboqyIf1xFJY+TEz9QzS0MRpUBKcIz3JtDtaktr4NwUWelyAbo1N
	 L7Vw6EG7e4T/V+lwydUSZQ9qEBp7hjK1/b+nBGMagvkw6XGvxY04kM2kUZgqODaZL6
	 xU1+6wdc4Trh2ECT1pcsny2C4g2EMUZpApEyCR4EQqcvA6ZiPVFgP6jrSDMcrAINIs
	 kAQAvmRtWhcQP9eJLRzUyN+TmeEAdva7NgttwH7NWo33v7SX2npT6GprLq5DYggvRo
	 I+k/q/lpxTJhYbJ/M1xUkGXS16PUNWSFtBP/hNF9phX+xIMIdvO1st6diuCkROcwou
	 WjrH+88YdMvXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D0AEB64DA
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 02:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168671082871.32158.14871799745213322281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb740a8472b9c8520ca478d307f774f4cfdea4b78dce1961cf5d27f2e13743b
Date: Wed, 14 Jun 2023 02:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686710828
