Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5367C
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 02:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEF02C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 02:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679366286;
	bh=uHynh+Yxr67dEuosUP/TApyzzCOHoBS90dQLWRLKq18=;
	h=To:Subject:From:Date:From;
	b=b2drpF2Y/h1rmWohLy4K62xhrXC+pyynHy2j5Wrkos+2JP6dB1kmR/PA9M3QCxwwf
	 Gr4zowZlUAKn8fmywhmqiItEMOuO0n/3hxS2dkOpcNHkt6E8Q5evaH2DgZGoiMY0df
	 ubZkFxvcYYU/cnj+A/JtslMsjfkF1PuJLxzvHn0aSGgNqEc7P2yVN/2NZcLJmCg0jY
	 RSgA/frnedimEH9aQjOXfou/lCpxQctaaXI7sMbJsKbMcY3rns+xFE87Pt6EppBJvj
	 rEWDCGsT596pkd60mvTa9L/IWlkCwtsuQ8R58hKlcT7f+ppIqTEP3V3VT1ed73I8ne
	 d924guxb+EazA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D09DFC6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 02:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167936628584.9324.8202549859693054603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c883b6ff67950a5b29c731bc6171ed001c09d3ca06e4693ae4c998c8ad460a8e
Date: Tue, 21 Mar 2023 02:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679366285
