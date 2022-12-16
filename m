Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04D120EA
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D4FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671207087;
	bh=v9QAJoGcJxkYC085l5Sd+MXIknuzxsChuxmb1Wtl8YM=;
	h=To:Subject:From:Date:From;
	b=P0RslnjF5dH7bFDiQd4+V1uvp4Yl7rJDOZXofFsllyxov4yiXG3gvnu1HD1MoRMyk
	 iJtD4rvEeeaDbQLXMGqF1i7an8Zk9vGjPsWKEwFcS3qU1W2Bak07NA2SYktYbHF5ox
	 hHCdbkfuHmBNqmcM1YdUxOjCyJWmTwuhCyP63NrQJlxby+bAk9GGcHSsAFTPF+z0qv
	 1ZOwUPGrdy1CroUD25xbjm97YnJP+TPKlddVObTa4gixG5lx0+xBE3R2L7NTCbTXuW
	 TYWm54FE6H90klw3h7z/Ji8Hy2MywJMNkeH4zyMQgfsQLl6sPADPMh+DKcEbPQswKS
	 Y3RQ2a64MQm1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66FBAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167120708741.22330.632689521182075745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b26513a4c9059b4e37e4ab68a938660e799381708cc27740a09b0f1e8996709e
Date: Fri, 16 Dec 2022 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671207087
