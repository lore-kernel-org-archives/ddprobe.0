Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCEA1FB8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 09:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C158DC433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 09:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688116388;
	bh=AJqGU4Rj+06UdhZfz8EwwRglKmtmbQyYtYSwAaaVKxo=;
	h=To:Subject:From:Date:From;
	b=kbpfAT7yzyN5uoIDIk3IoUEHgeeTFHsDfRbsMP4epaRWwoXgTDnhHzSYmDgyLbhRy
	 MrxpSlSqZlJF1kwugZ1JHaO2yJv94odrTRK3to6NpSJGrNYhYLjMqf72Z2UCRsTyl0
	 hBOFLs5NN9t5KjzkVAKW+RN3pv3jLjRNAAVNbsyDdXt6mY+uvP/DZIlpsAuuq/cPTQ
	 3HtQMqL9dmIkh475UNlOlz3/yKb+GjaJXrS6HIwb9KAsTwvssHUWvuRC/cB0GfwobA
	 du65rMd8Kss12bFhHfeY8jnYtzt2KvP0Ok18daNi++3j3+bVnp9XSxUmr/CwR5URQh
	 958Iz5fpTyizw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D17EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 09:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168811638867.18208.15279537559267026384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe2ae6684d9b5823ab30d97dcac7d59a525ff584c6a453b1f1dffa8e7d5d6ca
Date: Fri, 30 Jun 2023 09:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688116388
