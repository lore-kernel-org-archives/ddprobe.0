Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B21A40
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 02:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1A83BC433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 02:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681610706;
	bh=cWqZALWqFu0iR8nrQxQbLLmBvFK12JqbSWzxEBl/S3U=;
	h=To:Subject:From:Date:From;
	b=dP88sHyunAX0iKNiDzMcgoEjBIpa5pMDMvdMUlSzzX9LzHKT1J8jqYWwxj9HSkwrE
	 8JkhdIz8OYPD9L7R6cWzOsF4owOzu19nA3IObgCzOSCon7IkVBFnWqQXe6IUd7HzIK
	 K+6B0DjNEMAr2zIFstKh1GYr4ISeMLbz6ZTC8zMBiuDrdsM6DEKn8Om5Vt7hHzyZKv
	 64GOZkWFJ/uuQBwiT/yvcULvEaLJlvnRcM4JmzmhzCDW+wDlhRBebiGzve01EL0Enw
	 the1GlaiDbm6bV9ekVJy2964NLdFpsOtdvG4lB9rsH8aEI11O1t8RraF5bHMuWM3gC
	 M9d6YZF3DTBlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D32ADC77B71
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 02:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168161070585.27646.4154409802840765238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3afd4e8f1f2ac838e2e135ff74eb0805941a84b212044e5216aa2586c7ffad45
Date: Sun, 16 Apr 2023 02:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681610705
