Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B32C7F
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 02:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B27C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 02:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687573988;
	bh=TrWDstPCI+YC0XLtAHcJSUEQ8s+O3BWWYsHKUDz+mS4=;
	h=To:Subject:From:Date:From;
	b=g48va3J6qG0Jj37CdEgLXn5M2FSI0+O8DbpFSUzcaQBWy4iQbR+PfDGoqcPznZzDf
	 YN2PjQD2V9IX2vsiIAeWpNyJNln9HKzXv6YVrplvzh5gjQb90k+dsme5SL7POwx4G8
	 /Uvua3vGgJWonicsDrf/I7naDRvQpzZJwrAzwhRQes8YNfzdAL7rhJ2+VlauzrijoE
	 sMoMaw+0drsBRc+V5iMSxschXLHJCQ8MWawKKEJphkO9ihx6ZtBoJ+WwADrGBu+Fjr
	 3b44Ml7P+WdsFPI5kV7dU3AUDAaNh9KAA6MgNkjGVfGLd3WeqywwB82gA1M85duvsp
	 HU+0bwJYg2/PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09AFEB64D7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 02:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168757398868.14097.6534445273579738690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020ca688149bee08bf4cf2fff0857b5b81e9201cad438db12ee574d4c4ca3a36
Date: Sat, 24 Jun 2023 02:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687573988
