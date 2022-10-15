Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C504680C
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A19C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665852653;
	bh=GUy0tyFyFFyBVMcYYmQORYoVMdAKhlkgVhNJCJyeRTA=;
	h=To:Subject:From:Date:From;
	b=gL2r1AyNhYuNzzdSvD3HBvwvq3UJBn6UhoY9MzQ+9lKfrtTlMKF+OELMw06O3urq2
	 CFVxGj1PJoXEfc3akKjOUn+317nE1Z4F/ObRn3cZZ1R/paHpGUnRoT6YYMpSVwIsDk
	 F5912RQQ7mNFFB7at9bjfY3FMOVEY3fSIqOXVwDocTuL7jyWv1jXelIUcHX/PyxQnJ
	 VhEFk41AnKw+KTpzRQd26BhGrXmoJ0CRms/uHp8bD5yuqEG1aa+vGP112sTozZ6dev
	 QpdUAhRICDxdm5M9mS+QizuHlDPxsJqHDL94U0hVAZ2WG9OgqTY+glMz234y14zWKv
	 eu+7SZW0AE35w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 595A5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166585265335.30906.6346050758823117505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57caf0ceb35926aea56ea3e436e2e7c402f806dab1f14d6aefbacc69570f335c
Date: Sat, 15 Oct 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665852653
