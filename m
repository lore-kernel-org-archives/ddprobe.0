Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605207E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 02:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21F3C433CA
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 02:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690855928;
	bh=mviatzJ7ghbHTsCjdNuEVKaSczRwWlTeMkeFU1l4xxc=;
	h=To:Subject:From:Date:From;
	b=HpH2I0bJ61UUfcrsAkTbJoI5SmzYveibkvd+rNwsU20Qn9Ja5szRgQHmCAza/6TH8
	 up7ukcMCCuhW0RtAkAigxlmo3+r0nvpXqmFq5IAu/Qq1mEkqgK6NvqG6n1RnEhAbUq
	 dJ1AnskdZRO0doO0ENO1GbldDU1bmYTPPZP809RSTBPXkyaphELqR6ROAIWlWAv+/5
	 uestyr3I+XFa5SO30nLe+u43cMOLFvsxmTEaa9S/7wTSakFygyMIKYxhfW7oLvRMGR
	 e6EIdlr20LHgZHyrZWAc4XmCxxsvMLfjEmAuo7ABV56TWhbnZGXlzLdT+59mODjb3T
	 15CmPbOaEypAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04B1C001DF
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 02:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169085592871.20724.16538378894901255964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fb3a3d3091c8517d3e80f592dba989f0e8bade1110af4ce4036fffe22c6d6e
Date: Tue, 01 Aug 2023 02:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690855928
