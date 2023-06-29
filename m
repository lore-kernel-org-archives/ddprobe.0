Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580F0125C3
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 15:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BB9C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 15:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688052788;
	bh=AziV46Yj1tb/G+HpwOw23av2pudQTxWh4gRSLPRYK3A=;
	h=To:Subject:From:Date:From;
	b=CghuKjEneZY3OSHV/kiCM0t1+UZVzJbZ1X0DnXHbhYziMGZjg0+puqvfCVFszLuxm
	 OZeqyVKPFBbFGgZIFLw96Oqe1qggiUEYCp/EDK0XJ3jmZ+whDeFWoHGNmNOPtBOTDW
	 UvPUF1PgI/mgm4fyuZmUr9ORCINzrDcAzbiIaFObwiZPoCnIMdADf5ZUiTyS1wPPE4
	 CcxDTpLuN2gjFCmsHEBD8fePZuacEQEs+4kT051UquTMoM3kbBhczmrR2t9vfENRas
	 fhWshYfIfwOm27zN0CYnnRVUHyL+hLDIHudPJhw4k9aaWDJsigv5+RP9g2q1PtqifH
	 AO3yqnTVR5wxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC43EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 15:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168805278881.32145.16312815597824496138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8aaaeb572d0d3373de45e3b1da43f787fafd5aea637ab9b428ba1a942bc0cee
Date: Thu, 29 Jun 2023 15:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688052788
