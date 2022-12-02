Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7EA4C8E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F931C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670010054;
	bh=2T1LAhVC7jGRre7pIGrb/3sSfT+2SIQT9im3vJNRrkU=;
	h=To:Subject:From:Date:From;
	b=BK8XKfY2tVUn877VuXlgiw7vDKHDBWKHOszMhYMWfNR2PvQifx5cQxduv/6qWlDNr
	 +3JDf9fztvkV98D6pYW0NH4mqR1jLYsKg7iJBFQ5r0nIne/D6emMmDbZll+fqF/KAb
	 7ocaRBEMlOqfyeh19FsR4d1vd/lezgapuVXi4LcYmhb+TJBuVqctEFbAYA8CMNwwqS
	 0f6hVSgRR666Zzfjb8rgw6V1jOLBH/9ksFDAuAuG847BGyF3BYmNsUQfU3IJbp+ljA
	 NZ5eZ1EM2WsXr57psQix7CIJBsTB/4FidMnGCZEax0aX3Gozw/8ZO4OzFrqCP+v1nk
	 BbA+LsS4qvRvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550C3C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167001005433.5635.711183932098134532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46598d6b365303debbd0be1a42eb19c394281213290a49ca2f5d89abded07c07
Date: Fri, 02 Dec 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670010054
