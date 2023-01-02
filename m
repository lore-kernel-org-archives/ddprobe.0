Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139AE568A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 937BEC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672687287;
	bh=DT7RiFF9X1jlbnajPDyDUb9k45f+cBdABhKt5gjZdkU=;
	h=To:Subject:From:Date:From;
	b=Egb2yGy0vnXPHqTNbyVpiKdS503z1Dq/JfDn12mDXkhnpiSRE/QXnTqdx/WQF3GsV
	 jYp7iPb0wvN++IsBbuH2qArvzESoX1P1IMxHTrNWVOmHd2QITCrFxLpjnS+N6cDs4B
	 NXQU2zxOxbeJq9s5QEAmE1VTttxEJyVdOuyAZlg+pGu55n8tm6e+440fnHFsJkmY4c
	 iKdPrdPVdBF24WnWuJcTGwqWJ/2lYKUVXXQInOU/ZLclzG+sc5ZETVX46y2UwlQQmW
	 Y15jTGov5Qh2GLKUEs8Rgh/pTS9QhH/Uf9MnixLdxb9NU3O2blys6R/CDyfgzc2I5Q
	 yL58IeusyrD2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F208C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167268728741.8887.9992369923751550207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77af81bd9fcad10c5d0f5372d08a94e880b7b3de08d4ce3287db69a69b3c3ad1
Date: Mon, 02 Jan 2023 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672687287
