Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B876615C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 712C7C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665545453;
	bh=NwM/B7DKAoHU9u55Dfuke1Ay/T+lA0KFr3WqBluXyOk=;
	h=To:Subject:From:Date:From;
	b=KSP+/m80cOYa41JhKEWgTpfDq60aj8RzmCmrORCv7Yl1uP2Ljl1iUJeaewhi8+q1h
	 NIbCdpbNZM4cPKEVwroum80dHwIPMvWPb9/UCulZ2Z9lLuFkWlaSJjzT9PKPISeOLJ
	 QACGYcQtxUktu5u5scRIy2Af35IkF0wrbtqbQNsMWPabtgEYd88J/0m26J2FY6BH68
	 x16PhA0G8h+cpjUePXS+WCtDD3KZUNT3Jn8OvPDL9t+gfO8tCWLnjGz7f3nVG4s4ti
	 66aCcFgPpXrYQGoNPS8c7wDnnQD1K8RXAyRd0iYpzeHJtCGrqpHCq5o8Adadl3NuRr
	 qzOekD10NyCfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5598FC4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166554545333.25792.8638085425402659043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a143adf39e4b3a6a01c8dcd72b6b6de17f46bc641788581a89e4c6bae51ee615
Date: Wed, 12 Oct 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665545453
