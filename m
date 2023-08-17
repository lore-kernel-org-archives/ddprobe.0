Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4647F9
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 06:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1615C433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 06:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692253988;
	bh=5PwP8/7IyOlSfYAcQYO+ylXOIXMN7e5po2gRXfVdXhQ=;
	h=To:Subject:From:Date:From;
	b=WdKoI0V/BPAi+U0a3Tk+hj0bjeYQZ5AljR1BsiBdSyGPKdWDc/tTilyZ/o2MEDx+y
	 7/U+t+k/NvA3M0OKU1mM8poPYmvVGkOTxaGZG5xDeze429mTO7ETdZmItp1M2aN2Zr
	 CxQ9kcY/a+1aeUBWVJ3LVLDMab9XAjE2Cw2NgBWM/aMta+ha6cg4kzy1szFj4P4N2v
	 6B7bgIU3V+mWSa96VwyuYrPhkEHh5LbqxJR5dKusUyLs2BwNoReS8ZFaBG+Xlf7fop
	 xiW551n7eTt4DW6Z6fmelGN3NKp7YFEjiuGOln8OFFNJsHYBrfONuKLQHv0ebaJyH7
	 MoXBRG/ZwCz3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A40CDC2FC04
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 06:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169225398866.7835.2644851285804166461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faac4b921f235ce4533ccd2eaa453da6fa65662dd659f968ee52564f455d4870
Date: Thu, 17 Aug 2023 06:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692253988
