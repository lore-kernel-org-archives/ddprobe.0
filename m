Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A853BE66
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 23:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05C61C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 23:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686613506;
	bh=R3YYGC6Bkroxzo+4KTDTRc9j2kaz/ihi2p5AT21Fx90=;
	h=To:Subject:From:Date:From;
	b=swbk2un6FKlfaQJKwNM7PYTQ1IkB3tAHX1Ei7Iz9QcUZKrKxrcfPtzQXjY6U1YwOC
	 UdjOLYlgNUzUeExsVppA93q4jqAuk7T+xiPsABGu+FBTI3YrnIY9y4oPiYnMwHQgSA
	 rfkr63J3Alz0Ryav6K7FOufFOGPmgsQ2bycH2HzBizTaHuWqNHQps7XkXWyf7VMugj
	 SPJiM19PxI+VdyyPL3/6qWWBfOEH6qTFaX2p5BVO1eOg1ueCC/TuA9zmOUSaeqe62v
	 1w0YxDDr/4QpaRhJPx5rubLHpPIBwq+6KCXCczffrgkB964ZvCTRefr7ewx0fEKkxJ
	 ghC3M/bDt81kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD11EC7EE2F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 23:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168661350581.30655.6522489030512931931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad3292894566914251d51698890b1e568bbbc72d6b74883fae55a17d081cb3bc
Date: Mon, 12 Jun 2023 23:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686613505
