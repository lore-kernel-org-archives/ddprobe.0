Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADA93365
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6944BC433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663417853;
	bh=KMHyLYetzr9N1vnfLYM4eOBGdz8zi+Bcul3Qo5ZcfTk=;
	h=To:Subject:From:Date:From;
	b=AnBg9cJsH1GbpdInmEtMxEWgvCDeBDUoomW+KajJFqNcTfXhBsqC1vFwMUgks53Te
	 90uFU4VFRgabOiv6IyK+t73wT7SVvWGMSEOxo722nRIqzU8aq6HhHBZ0OrcXj6cSz3
	 Pna0+AQwoou7lVlqgbGthefogd+oHdbYYgiomgg49QSXfLi/j4jgQBce2MNsv1RrV+
	 0xMtXZ6Anmxmu65P9GOb/wcenUNpcbe6+hW2JIVil7TqIS0N+k6MpGkAl23qgp1+Jx
	 wGx1yVxQMNuYFUHE42/FwSDoh//C0IrvsOB4luZOXxA6zz8nBLiQbpc1zfQQOyBzBy
	 ABMRDpTJxvsPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EBCCECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166341785331.7636.11863466972835499117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa70e45f9513c216137d8b36513459da0ba2d7ab2e1d1e6ba4a29de5bcd9bc9
Date: Sat, 17 Sep 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663417853
