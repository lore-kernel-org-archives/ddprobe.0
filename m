Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C27D2E8
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 04:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECC7C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 04:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677989825;
	bh=A6m3ujM5Sb/Dllh3E3L6jOy0aB7kBs7HgvauIWsv7w4=;
	h=To:Subject:From:Date:From;
	b=kkpPx8Ur+z0fLiWsG0VDdWPYMjIctJLg6EWFFNB8LEfe6iaWzAC2d3EHL36QB6okZ
	 PTNOJqxpDYIVzK12hATue7b4ZOvLNvTiArhr82sftYK9yYWXV4NmiToEgqZKT/qetm
	 Keh0jFzYSf2qe1spiQJ3eC6d7qbT0YqMHJE4z3BdBoApTKBMCKZ3GZXaR2oL0GawnC
	 oNmgb/4k8wi40yBlXOQ8h23jEWhaZ+Y7fh7VBablof0PSjUvsZnR3O7val7IbC/rn7
	 nbtinfNDem5LM7nhomgqzlWoQkw4AV2L5yef0ivxKWwmKwrBwhi9QVk7e97ZoKI6j7
	 H5Dk5MRk6XicQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B962CC678DB
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 04:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167798982575.26769.9716059147989293928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10eae368c3923de3bf62de668c60626efccdf854192d5b75dbf051edddc83ad
Date: Sun, 05 Mar 2023 04:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677989825
