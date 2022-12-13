Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8362F2F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9F3C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670931687;
	bh=88jWwq3uWXHdQ4hR3JPNuSgIdbdVX0cQZOc7/zXYc3Y=;
	h=To:Subject:From:Date:From;
	b=Rhdxx6WfzwHTQUxw+hAJqJ+y5QowdHgmQecNPceQ5DIOWelleAMleMiifiWlrzSei
	 hXhpLiqBVV8xZ3ob8Tgt3ep1LYMpVeBpebpqcHhiV5YnT6frWUrY4e6zx6z6QrNh8Y
	 N6dDumXYkSKoYYETbvkSz1MW/GLLyPKrR3tcxN+LMZO3MLVbXge142ThGPOFQeROZ2
	 PJFNMtT+KoxOaqqNVPAmjpbiwZpper6al4/tp5zRcE1zvbool9Ujw6cQ57pGNtxHbe
	 ARGTC8xg+/siWimBaWz03nXeuj2s7RtzLE4fs7RXovvq4qHNubas2+VRju93DlvJby
	 cIz8MaMSeEh0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644B8C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167093168740.10580.7075068778268379084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b869154e3a0073e07441e1c0fc130180ec394ad813d816d3b5ee2a5ab3ceb83
Date: Tue, 13 Dec 2022 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670931687
