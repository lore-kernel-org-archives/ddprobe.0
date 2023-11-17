Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226EB79C5
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3WaLVEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 850B5C433C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700203696;
	bh=rR3yT9nr/PvWE7bVzkV6/ItCfcJmA9qHWeyxOgNX1sM=;
	h=To:Subject:From:Date:From;
	b=d3WaLVEe+GLvEW+Fugn5JJr5pxPL4Wcy20SIcLiFcl72v47mdiU9He3iK2wyrbpCy
	 c/6pCED8W07XOdh0EMTONma/RJlcEiRM03wSYdHhi3CLE+52KrZ6C7A4HkNwQ4hCHa
	 8qanLDsdrcFRifIqklv0aFq/NFvhtzcnoJuB8cZ2iZJtUFoHcr3PG7P0A8b905vW02
	 xPpRbSrFrUGb/2qvNVKMQ4QdgTl0T9K9861O7M5eOJavESHmwmUlWJEqiLpH1z4RWO
	 V5HIs2ruo7T2bnUMAZbvD5sik1iwX39maWiNRstL4tgjcYzZG7Et5A5r8wcSyCc8oU
	 ccySIYAH4pjjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6628BC072A2
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170020369640.7723.16456499928370457291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711401f41db00572c4d4aad6c73ef7ea783728bd58357b43e4404cefac220aab
Date: Fri, 17 Nov 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700203696
