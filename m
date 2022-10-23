Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00141369
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 718C3C433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666522253;
	bh=y42DIWJH2xtLz7ZVLru1/59PMmSpWIdVpdwfaE2tda8=;
	h=To:Subject:From:Date:From;
	b=ke2jHwpH5KxpleJEFyhjsAgQLHyMrTzVgK+qgkTT9NYcLJLk9GiRQ8/1eLuWLNBQJ
	 +ZlwPf/pckpmDCfP4uHTnbfMYIGXqZXbOgR9/UfFToBA4388Uohpg1ithQKLmH3llc
	 w0T9vFXr0mAlYFIIsL0gUZzHKHTMZ5G+lkAROLjH5Gz6cDIbThv2/WZRmPZTrUNcEc
	 a8yDACObd1e0cE6CIl0cguR7BshYXWvqx4d4nyYG/WAS0i3DiGV1M3LLYeVPZgtPSq
	 ZTQhpmiIAPmMwdJCGmnyGBP2WnROqpfVqN+inrMhD+ohmuNPbjqcw7yeaGMB5wX6JI
	 e0ywk+JLkZCzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55145C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166652225332.9470.1890966689757810547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3029669c03a03fc1391a3d4f5ce921800b105de1780bc0b27fd9c48e4ed6d79
Date: Sun, 23 Oct 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666522253
