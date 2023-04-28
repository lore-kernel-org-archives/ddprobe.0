Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315CE23D3
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 08:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A87C43442
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 08:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682671925;
	bh=lM+YDBhZWgjjUxAN07NuTmoYXmTwdg93B0fsYtYZ39k=;
	h=To:Subject:From:Date:From;
	b=NRZienSQYMoztdqmc+CUwOztCB+e0sytCnA6iSD3wDccccFwkbLba3gc7tG5V6SqP
	 5SFtEXJtEsgsJoa/lIOb28fMi8vyj0A9Dk3dq8SsfeRBQ8to6vaDeOXTCmR7TpBSLM
	 LMb7QwQWbHqCfTGyfv1snjFr7zenCsaQyKlOPApQ6IkQsOz3AGNoviDcgYemWN9jU9
	 VxPKD0ykF0yLkElHITpVNL1+riaFtoo14D8sXxThhOZ3hqqJLFvKpi7R2Jnr+ZhKlt
	 4LzGAQFrNvqjjclCBaeX0tIsqtT9wTQZTdrNsB7IJIi7B1JiCrXEFDI4fax56mbym1
	 4ZmAfW9Ro/AmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1372C77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 08:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168267192578.2638.18341398447896759761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6744d52b26bc485ae3efdf497e37279134a9e5867bbe8972578265cebce832d1
Date: Fri, 28 Apr 2023 08:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682671925
