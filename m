Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B434917C2
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70DA3C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664844053;
	bh=7A0F8GalmeEpzyYhO2v1P9ko8Fd02duLyUBiVXq1PuU=;
	h=To:Subject:From:Date:From;
	b=CwOZD+mgapjQp3ZReSzOfR2gx0+hMuNzKsAR/KvdqnFFFh2nwkkVITB5rh7upcRzB
	 wbEyHI2HIdmAYVFXnsA/2GlX2+kW2PBKq+x7gIr1qEV0tYBSejtZcMxmKF++doJarz
	 COBH7Nc3OScNdGh1jQznS9g8fTMWNc6LsKKXze2CHwtJZ3r1D/D85OHgF0a0f87ZUX
	 EB3JVDFI+2wm0gKVibB3raoJlgrq46JgF+OItwfVIZb1Rl1f8oWuI1w3oIDR1zUmQL
	 7A9gPOg89XbOMWSeRfSwKBCKdRhD9NBokbgHhiE0KDP6pfBP/iVSeAXWePQrrErYQd
	 Wlmrqm5p3t8bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57606C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166484405335.9197.10275003858958233535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc21bb723e3b95851fdd0ab3b4e33302c3bf75a9ab392e1c95862d48ac9563d7
Date: Tue, 04 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664844053
