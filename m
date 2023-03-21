Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637521078E
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 23:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2E57C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 23:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679440686;
	bh=NGhrzedyEVcFDpPAZxIRG3XP4FD74lZ8mowX44uQTfQ=;
	h=To:Subject:From:Date:From;
	b=Zb8Si3n4wTZpz+GXpB5OQp05ToSkSYtQyH3R3LK7TZ5XVzNT0dop3/oIY1F4Q4Eo6
	 blQTPOipNmIjr9RYmTg304M3WjYYAUvujThqN2wSg5Djn5ai+fI2Ci7mWrFW0rmnPd
	 Tlb6KDbMXjcvFsOHwkNyyb3Q+Fen5dRdKmKdGCbe6YQU0l8dSkb/Wuhbw+HiDMHqTT
	 8GXlJcq5G4XBKoijTRHP0bpZ3fGxGjGf1tja0mGpDxaAQfvzP9dpMWX6jRkly2Q8Uv
	 /Yn8YyCZpp0NjM5bZJspldBoHMaLW24ebkh2A7HQi0/aijRk/7ACOvOB+4dcwXZj5d
	 LYvgbMl0VuWTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0863C6FD20
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 23:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167944068581.11136.778880900953400014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2619c12b74a2de2b21fd124d601e2e52b5b39d366a1343be26647f10a91221b5
Date: Tue, 21 Mar 2023 23:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679440685
