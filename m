Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B42FC4A00
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DBE0C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665087653;
	bh=m1tToQWZCGORa/ukPIn4RIaAOhMgZBMXXBY1U6D19Ew=;
	h=To:Subject:From:Date:From;
	b=k4FnSQFBJbmaAzwpWLZflmA3SxjXU/W8n0N6UNFyxCZUxHLPs9UUboFs+stH5pbNl
	 v2mFtjfM055hmxOPKeCQMSnjv40OHvvKIoONhUksH8mT546OM9d5h8Y+XGtl8Q5Dl9
	 hQLGyBt539z/Kbwu7wGH8DgqOzQWdChrHj05Wzy1AaF180Gnso330P4LCwU7YB+8+r
	 5sBXKrH7+2l5zq8HTqelQ9mQ4jv4GjNw6gNzuoXq+OttDOsY9gb/6YPTmyrvMy/Pho
	 P3cRxlLTdWqOBh18HEjGq+AN7ST/7Qhzy7B0xO9B6tiT7Gh57Eo+PO+9cY9/rO9A4u
	 dDje3WKS83SRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EFA8C433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166508765331.31923.13084367767879496253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 568202a97276ede53b2325109394eb61ea8f09a03d5c0df2cc0ff057d172b516
Date: Thu, 06 Oct 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665087653
