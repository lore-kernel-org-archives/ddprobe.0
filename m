Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A20382109
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 21:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEEB1C433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 21:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686950349;
	bh=DU3sJ3pW0lYk6bPC+LL/hOS1AQr0hbQF+SW90H+G0Ng=;
	h=To:Subject:From:Date:From;
	b=AJmA1scc8iJkZdOSFWtnQCviNiIEl9vS4KxKKXISN+zRbtQ+wxSGEb2YckYIfxpOr
	 LDtNgt6M1ffvAHvQs01RLnSbF+4/xYmSg7yIcoTZYR4EQWLHjTgGaDv6fA8LL+qfxW
	 QVm+/oKYKuLUUPoUGrkSOA7wLxZfmAazyLucKXrCfq23bxZknIhpwUld7qSavnDHhK
	 nyKGH9SDZaRM+Y5oYseBH1AtlqM9ivxaCNJFtYThKTgCQ5KckC7Sjvvgi7jhUKOG58
	 Gau0/Y8xkGg595c4xSNzaRquRovEJjG4xN+Q9Y8rHMBJuI3BAIfa60y3FuNjU8zhTs
	 Io9MZ5T+det+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C853CEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 21:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168695034881.19070.12198076139384870763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a916fd31deb0794a2e7dca7e3e04f79a6b8a7e08b3f566f7168e04a7b2337105
Date: Fri, 16 Jun 2023 21:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686950348
