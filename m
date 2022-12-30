Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B0F46AE
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79637C433F0
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672433487;
	bh=cv4RrX2UdFvFE0gS0mH6IZ0PcO9VtxpldCfZenCMeCk=;
	h=To:Subject:From:Date:From;
	b=hPD6fg7Ro3xOrqvqUZl1vY4v76cVweFpYnPVRhXLevj/OIWLhfG0k4p80ABzd+p37
	 e1Au/Dj28G6orAq2FiWpGeScYYzWmZn2QH9PNPLhv68fDyNf191J1WomEADM7HKeET
	 jKKndH63yLNjfdOLsI4Rn5InKcJRZCd1b80UsDFOKz20VV9AKvx0UUAV7XkKYVbUp+
	 gBtBFEHx7YMO+pDBjSrFu46hrrDBnmojASDUyTFM7ZWfgETaKQ2NYk6zrPFYMB3pST
	 ATOYGBQqdZtI/cydkIkSNo8N/j4pYO93eJGVGWb4PpL7IXNfxNjt0Lv5n7b2kifbOa
	 k7GKz8TT2lcFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63876C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167243348739.20123.15670955592285986115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9edb7ccf725db02d9e4f9d920fba0cc97aa477672b456372cd415b4977ed57b0
Date: Fri, 30 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672433487
