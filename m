Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A77A20FE
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 13:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 044EEC433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 13:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674220926;
	bh=XCy+KcCI/SBw3O6MFhSsBw8ZLO55E/FHP2kbYN0oCPo=;
	h=To:Subject:From:Date:From;
	b=jUrD3y1bBMsrAZC5+96pClA6QDMgaeiLiWAbeCkrudZ/QxWRhi+NoV3tQITJP3xWT
	 UxIe0nSpBd+1AiYzkk8qeb2iYgmoHxHA4q+B+VHkerbQGhhlXKEEbjcp5Ix1sLncyl
	 DGu95DnwHs+QUjeF+7PKNhXEJmJaAiZnJ3OxcXId6tTg1trzHFwZ+M9tgEV6qMjY+e
	 AKup3E/W9Iixwd7og5EJviHbeePWiEzo+DO3nBooLotQzeFhpMpj89H9bjUA9mGxHK
	 pbwVdJexSDXx2FG4SAwaAs0N+vHlQbMENKg/zhQMRUeAghiJN0BE8QImoQiUmdTLj8
	 Z1HjyLfXhGtWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7661C25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 13:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167422092586.32316.12472674415003217251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb21bec6d27a5a3a577ad6ac6c1ca65397d10879712f1eba953ca93cec690202
Date: Fri, 20 Jan 2023 13:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674220925
